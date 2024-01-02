#!/bin/bash
set -euo pipefail
  mkdir -p $PWD/keys && cd $PWD/keys
  for i in {1..10}; do openssl genrsa -out mobile_devicev2_c$i 2048 && openssl pkcs8 -topk8 -inform PEM -in mobile_devicev2_c$i -out mobile_devicev2_key$i -nocrypt && rm -rf mobile_devicev2_c$i ; done
  for i in {1..10}; do openssl genrsa -out accessv1_c$i 2048 && openssl pkcs8 -topk8 -inform PEM -in accessv1_c$i -out accessv1_key$i -nocrypt && rm -rf accessv1_c$i ; done
  for i in {1..10}; do openssl genrsa -out desktop_devicev2_c$i 2048 && openssl pkcs8 -topk8 -inform PEM -in desktop_devicev2_c$i -out desktop_devicev2_key$i -nocrypt && rm -rf desktop_devicev2_c$i ; done
  for i in {1..10}; do openssl genrsa -out portal_anonymous_c$i 2048 && openssl pkcs8 -topk8 -inform PEM -in portal_anonymous_c$i -out portal_anonymous_key$i -nocrypt && rm -rf portal_anonymous_c$i ; done
  for i in {1..10}; do openssl genrsa -out portal_loggedin_c$i 2048 && openssl pkcs8 -topk8 -inform PEM -in portal_loggedin_c$i -out portal_loggedin_key$i -nocrypt && rm -rf portal_loggedin_c$i ; done
  echo "OK"
