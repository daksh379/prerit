resource "aws_instance" "myinstance" {
    count = 2
    ami = "ami-0a23ccb2cdd9286bb"
    instance_type = "t2.micro"

    tags = {
      "Name" = "Myinstance - ${count.index+1}"
    }
}