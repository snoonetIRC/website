#!/bin/bash

if [ $TRAVIS_BRANCH == 'master' ] ; then
    scp -r ./public/* $scp_dest
fi