Terraform AWS S3 Bucket Module

Overview

This Terraform module is designed to facilitate the creation of an Amazon S3 bucket on AWS with customizable parameters. It encapsulates the necessary configurations, making it easy for users to provision S3 buckets in their infrastructure.


Introduction

Amazon S3 is a highly scalable, reliable, and low-latency object storage service provided by AWS. This Terraform module abstracts the complexities of configuring an S3 bucket, providing users with a simple and efficient way to create and manage their storage resources.


Prerequisites

1. Terraform Installation:

Ensure that [Terraform](https://www.terraform.io/) is installed on your local machine.

2. AWS Credentials:

Configure your AWS credentials using the AWS CLI or environment variables.


Module Configuration

The module's main configuration is defined in the `variables.tf` file. The key parameter to customize is `bucket_name`. Here's an example:

                          variable "bucket_name" {
                                  description = "The name of the S3 bucket"
                                  type        = string
                                  default     = "myalps3ha"
                        }



Terraform Configuration

1. Initialize Terraform:

   $   terraform init

2. Review and Apply Changes:

   $   terraform apply

   Provide the desired values when prompted.

3. Review Outputs:

   After applying the Terraform configuration, the following outputs will be displayed:

   - `bucket_name`: The name of the created S3 bucket.
   - `bucket_arn`: The Amazon Resource Name (ARN) of the S3 bucket.


Module Usage

To use this module in your own Terraform configurations, follow these steps:

1. Create a `main.tf` file:

   module "my_s3_bucket" {
     source            =”../SourceFolder"
     bucket_name       = "my-custom-bucket"
   }

Replace `"../SourceFolder"` with the actual location of your module directory.

2. Initialize Terraform:

  $   terraform init
   

3. Review and Apply Changes:

  $   terraform apply
   

   Provide the desired values when prompted.

4. Review Outputs:

   After applying the Terraform configuration, you can access the outputs of the module:

   - `bucket_name`: The name of the created S3 bucket.
   - `bucket_arn`: The Amazon Resource Name (ARN) of the S3 bucket.

Now you have successfully integrated the AWS S3 Bucket module into your own Terraform configuration.


Variables

The module supports the following variable:

- `bucket_name` (string): The name of the S3 bucket. Default: "myalps3ha".


Additional Notes

- Region:
The region is set to "ap-south-1" by default. Modify the `provider` block in `main.tf` if you want to change it.


