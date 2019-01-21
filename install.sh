#!/bin/bash

export HOST_DELUGE=sampleValue.domain.xxx
export HOST_JENKINS=sampleValue.domain.xxx
export HOST_WIKI=sampleValue.domain.xxx
export LETSENCRYPT_EMAIL=sampleValue@domain.xxx

##############Functions#################
function log(){
        echo "###### $1 ######"
}

#######################################


log "Stopping all previous containers"
docker stop install_jenkins_1 install_wikijs_1 install_wikidb_1 install_letsencrypt_1 install_proxy_1 install_deluge_1;
sleep 3;

log "Removing all previous containers"
docker rm install_jenkins_1 install_wikijs_1 install_wikidb_1 install_letsencrypt_1 install_proxy_1 install_deluge_1;
sleep 3;

log "Creating web docker network"
docker network create web;
sleep 3;

log "Starting Nginx WebProxy" ;
docker-compose -f nginx_webproxy/install/docker-compose.yml up -d;
sleep 3;

log "Starting WikiJS" ;
docker-compose -f wikijs/install/docker-compose.yml up -d;
sleep 3;

log "Starting Jenkins" ;
docker-compose -f jenkins/install/docker-compose.yml up -d;
sleep 3;

log "Starting Deluge" ;
docker-compose -f deluge/install/docker-compose.yml up -d;

log "Starting SFTP" ;
docker-compose -f sftp/install/docker-compose.yml up -d;

log "Everything started" ;
