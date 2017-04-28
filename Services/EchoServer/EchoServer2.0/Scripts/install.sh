#!/bin/bash
set -x

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $(pwd)
cd $DIR
appPkg="$DIR/../EchoServerApplication2"

azure servicefabric application package copy --application-package-path $appPkg --image-store-connection-string fabric:ImageStore
azure servicefabric application type register --application-type-build-path EchoServerApplication2

# Used below command to upgrade from version 1.0 to version 2.0
azure servicefabric application upgrade start --application-name fabric:/EchoServerApplication --target-application-type-version 2.0.0 --rolling-upgrade-mode Monitored
popd