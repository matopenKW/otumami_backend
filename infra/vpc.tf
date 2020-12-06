resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr["${var.env}"]

  tags = {
    Name = "${var.project}"
  }
}

resource  "aws_subnet" "subnet_1a" {
  vpc_id = "${aws_vpc.main.id}"
  availability_zone = "ap-northeast-1a"
  
  cidr_block = var.subnet_cidr["${var.env}_subnet_1a"]
  
  tags = {
    Name = "${var.project}-${var.env}-subnet-1a"
  }
}

resource  "aws_subnet" "subnet_1c" {
  vpc_id = "${aws_vpc.main.id}"
  availability_zone = "ap-northeast-1c"
  
  cidr_block = var.subnet_cidr["${var.env}_subnet_1c"]
  
  tags = {
    Name = "${var.project}-${var.env}-subnet-1c"
  }
}
