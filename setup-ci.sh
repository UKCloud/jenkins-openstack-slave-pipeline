#!/bin/bash

#TODO: Add tests for deploying jenkins using this script into a new tenancy

NAME='openstack-jenkins-slave'
SOURCE_REPOSITORY_URL='https://github.com/UKCloud/jenkins-openstack-slave-pipeline.git'
SOURCE_REPOSITORY_REF='master'
CONTEXT_DIR='docker/openstack-jenkins-slave/'
PIPELINE_CONTEXT_DIR='jenkins-pipelines/openstack/'


function setup_projects() {
    projects=(build-openshift build-openshift-pre-prod)
    for project in ${projects[@]}; do
        oc new-project $project
    done
    oc policy add-role-to-user edit system:serviceaccount:build-openshift:jenkins -n build-openshift-pre-prod
    oc project build-openshift
}

function deploy_jenkins_master() {
    oc new-app jenkins-persistent -p VOLUME_CAPACITY=50Gi -e INSTALL_PLUGINS=slack:2.35,global-slack-notifier:1.5
}

function setup_openstack_jenkins_slave_pipeline() {

    oc new-app -f openshift-yaml/template-openstackclient-jenkins-slave.yaml \
        -p NAME=$NAME \
        -p SOURCE_REPOSITORY_URL=$SOURCE_REPOSITORY_URL \
        -p SOURCE_REPOSITORY_REF=$SOURCE_REPOSITORY_REF \
        -p CONTEXT_DIR=$CONTEXT_DIR \
        -p PIPELINE_CONTEXT_DIR=$PIPELINE_CONTEXT_DIR
}

function configure_openshift_githooks() {
    # TODO: Automate webhook creation and updates via the github API
    gitHook=$(oc describe bc ${NAME}-pipeline | grep -A1 'Webhook GitHub' | grep URL | awk '{print $NF}')
    echo "Add a github webhook for the following URL to trigger automated builds of the Jenkins pipeline, $gitHook"
}

setup_projects
setup_openstack_jenkins_slave_pipeline
