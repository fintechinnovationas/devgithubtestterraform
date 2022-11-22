init:
	terraform init

plan:
	rm -rf terraform-plan.tf
	terraform init
	terraform plan -var-file="secrets.tfvars" -out terraform-plan.tf

apply:
	terraform apply "terraform-plan.tf"
	rm -rf terraform-plan.tf

.PHONY: init plan apply
