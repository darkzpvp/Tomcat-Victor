#!/bin/bash

# Elimimar pila
aws cloudformation delete-stack \
--stack-name "instanciaVictor"  \
# Esperar hasta que la eliminación se complete
aws cloudformation wait stack-delete-complete
--stack-name "instanciaVictor"

