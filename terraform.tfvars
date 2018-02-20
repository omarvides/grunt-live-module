terragrunt = {
  backend "s3" {
    bucket = "${get_env("TF_VAR_BUCKET", "")}"
    encrypt = "${get_env("TF_VAR_ENCRYPT", "true")}"
    region = "${get_env("TF_VAR_BUCKET_REGION", "us-east-1")}"
    key = "${get_env("TF_VAR_GRUNT_BLOG_PROD_KEY", "")}/grunt-myblog-us-east-prod.tfstate"
  }
  terraform {
    source = "git::git@github.com:omarvides/terraform-resource.git//aws"
  }

  arguments = [
    "-var-file=common.tfvars"
  ]
}

count = 1 
instance_type = "t1.micro"
tag_name = "blog-prod"
region = "us-east-1"