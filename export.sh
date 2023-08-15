#!/bin/bash
oc get project red-bookinfo1-app -o yaml > ns-red-bookinfo1-app.yml
oc get deploy | grep -v NAME| awk '{ print "oc get deploy "$1 " -o yaml > deploy-"$1".yaml" }' | bash
oc get svc | grep -v NAME| awk '{ print "oc get svc "$1 " -o yaml > svc-"$1".yaml" }' |bash
oc get destinationrules | grep -v NAME| awk '{ print "oc get destinationrules "$1 " -o yaml > destinationrules-"$1".yaml" }' |bash
oc get virtualservices | grep -v NAME| awk '{ print "oc get virtualservices "$1 " -o yaml > virtualservices-"$1".yaml" }' |bash
oc get gateway bookinfo-gateway -o yaml > bookinfo-gateway.yaml
