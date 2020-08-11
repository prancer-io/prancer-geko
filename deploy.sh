configuration_folder="vm"
config_file="deploy.yaml"

config_path=$configuration_folder/$config_file

deployment_name=$configuration_folder$RANDOM

gcloud deployment-manager deployments create $deployment_name --config $config_path \
     --preview


gcloud deployment-manager deployments delete $deployment_name