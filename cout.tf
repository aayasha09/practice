provider"aws"{
    region = "ap-south-1"
}
resource"aws_instance" "AWSEC2instance"{
    count = "${var.instances}"
    ami= "ami-074dc0a6f6c764218"
    instance_type = "t2.micro"
    security_groups = ["launch-wizard-9"]
    key_name = "terraform_server"
    tags = {
        Name = "Terraform- ${count.index}" // for dynamic count
    }
}
