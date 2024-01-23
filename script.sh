#!/bin/bash

#desplegamos un stack y Nombre del archivo YAML que contiene la plantilla
# Crear o actualizar el stack
aws cloudformation deploy \
  --template-file main.yml \
  --stack-name "instanciaVictor" \
  --capabilities CAPABILITY_NAMED_IAM
