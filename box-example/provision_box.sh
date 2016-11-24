#!/bin/sh

CHEF_CLIENT=`which chef-client`
export CHEF_DRIVER=ssh
rm -rf ./berks-cookbooks/main || true
berks vendor
chef-client -z -o main::run_provision
