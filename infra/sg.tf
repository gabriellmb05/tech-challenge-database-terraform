resource "aws_security_group" "rds_sg" {
  name_prefix = "rds-"

  vpc_id =aws_vpc.main.id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
         from_port   = 0
         to_port     = 0
         protocol    = "tcp"
         cidr_blocks = ["0.0.0.0/0"]
       }
  
}
