# provider "aws"{
#     region="ap-south-1"
# }
resource "aws_s3_bucket" "mys3b"{
    bucket=var.bucket_name
    acl    = "private"
    versioning{
        enabled="false"
    }
}
