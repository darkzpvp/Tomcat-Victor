export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_SESSION_TOKEN=
export AWS_DEFAULT_REGION=us-east-1
#desplegamos un stack y  Nombre del archivo YAML que contiene la plantilla
# Crear o actualizar el stack
aws cloudformation deploy \
  --template-file main.yml \
  --stack-name "instanciaVictor" \
  --capabilities CAPABILITY_NAMED_IAM
