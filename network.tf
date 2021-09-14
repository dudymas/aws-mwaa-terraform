# MWAA network

resource "aws_security_group" "mwaa" {
  name        = "airflow-security-group-${var.prefix}"
  description = "Security Group for Amazon MWAA Environment ${var.prefix}"
  vpc_id      = "vpc-094412cd96eb5b2a2"

  ingress {
    from_port = 0
    to_port   = 0
    protocol  = -1
    self      = true
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(local.tags, {
    Name = "airflow-security-group-${var.prefix}"
  })
}
