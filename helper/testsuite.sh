#!/usr/bin/env bash
mkdir -p testcases/foo-0.1.0-bar
mkdir -p testcases/foo-0.2.0-bar
mkdir -p testcases/foo-0.10.0-bar
mkdir -p testcases/bin
ln -s ../../helper/helloworld ./testcases/foo-0.1.0-bar/
ln -s ../../helper/helloworld ./testcases/foo-0.2.0-bar/
ln -s ../../helper/helloworld ./testcases/foo-0.10.0-bar/

echo "lag[hello]=./testcases/foo-*-bar/helloworld" >testcases/conf
