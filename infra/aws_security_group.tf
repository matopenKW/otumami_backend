resource "aws_security_group" "otsumami-elb-sg" {
  vpc_id = aws_vpc.main.id
  name   = "${var.project}-elb-sg"
  ingress {
    from_port         = 80
    to_port           = 80
    protocol          = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
  }
  egress {
    from_port         = 0
    to_port           = 0
    protocol          = "-1"
    cidr_blocks       = ["0.0.0.0/0"]
  }

  description = "allow tcp 80"

  tags = {
    Name = "${var.project}-elb-sg"
  }
}

resource "aws_security_group" "otsumami-sg" {
  vpc_id = aws_vpc.main.id
  name   = "${var.project}-sg"
  ingress {
    from_port         = 0
    to_port           = 65535
    protocol          = "tcp"
    security_groups = [aws_security_group.otsumami-elb-sg.id]
  }
  egress {
    from_port         = 0
    to_port           = 0
    protocol          = "-1"
    cidr_blocks       = ["0.0.0.0/0"]
  }

  description = "allow tcp 80"

  tags = {
    Name = "${var.project}-sg"
  }
}