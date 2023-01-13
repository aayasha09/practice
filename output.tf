output "aws_public_ip"{
    description = "getting public ip"
    value = "${aws_instance.AWSEC2instance.public_ip}"
}
output "aws_private_ip"{
    description = "getting private ip"
    value = "${aws_instance.AWSEC2instance.private_ip}"
}