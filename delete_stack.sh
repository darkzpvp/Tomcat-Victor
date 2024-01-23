#!/bin/bash
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_SESSION_TOKEN=
export AWS_DEFAULT_REGION=us-east-1
# Elimimar pila
aws cloudformation delete-stack \
--stack-name "instanciaVictor"  \
# Esperar hasta que la eliminación se complete
aws cloudformation wait stack-delete-complete
--stack-name "instanciaVictor"

