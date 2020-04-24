#! /bin/bash
template="ingress-function.yaml.template"

function=${1:-"pipeline"}
domain=${2:-"mdl0418.iguazio-cd1.com"}
secret=${3:-"kfpuser"}


cat ${template} | sed s/{{FUNCTION}}/${function}/g |\
     sed s/{{DOMAIN}}/${domain}/g | \
     sed s/{{SECRET}}/${secret}/g