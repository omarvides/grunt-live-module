# Grunt live module

## Getting started

1. Install Terragrunt https://github.com/gruntwork-io/terragrunt#quick-start
2. Install AWS CLI and configure it with your AWS Account [AWS CLI](https://aws.amazon.com/cli/?sc_channel=PS&sc_campaign=acquisition_LATAM&sc_publisher=google&sc_medium=english_command_line_b&sc_content=aws_cli_p&sc_detail=aws%20cli&sc_category=command_line&sc_segment=222128104710&sc_matchtype=p&sc_country=LATAM&s_kwcid=AL!4422!3!222128104710!p!!g!!aws%20cli&ef_id=WZJtAQAAAz1W_Njt:20180220004421:s)
3. Clone this repository 
4. Configure environment variables
5. Create a AWS S3 bucket [Using AWS S3 Bucket documentation] (https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingBucket.html)

```
example:

TF_VAR_BUCKET=my-super-bucket
TF_VAR_ENCRYPT=true
TF_VAR_BUCKET_REGION=us-east-1
TF_VAR_GRUNT_BLOG_PROD_KEY=the-key-to-store-your/statefile.tfstate
```
6. Run ```terragrunt init```
7. Run ```terragrunt plan```
8. Run ```terragrunt apply```

You will be prompted to confirm if you want to create the resource, type yes to create it.

To destroy the infrastructure

Run ```terragrunt destroy``` and confirm when prompted