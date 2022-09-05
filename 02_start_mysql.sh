#!/bin/sh
set -o xtrace

helm delete mysql

#Install with Helm = easier!
helm install mysql --set auth.rootPassword=root,auth.database=my_app,auth.username=vault,auth.password=vaultpw bitnami/mysql

