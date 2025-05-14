resource "aws_db_instance" "tech-challenge-postgres" {
  identifier          = "tech-challenge"
  engine              = "postgres"
  engine_version      = "17"
  instance_class      = var.instance_size
  allocated_storage   = 10
  storage_type        = "gp2"
  db_name             = var.db_name
  username            = var.username
  password            = var.password
  skip_final_snapshot = true

  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  db_subnet_group_name = aws_db_subnet_group.postgres-subnet-group.name

}

resource "aws_db_subnet_group" "postgres-subnet-group" {
  name = "postgres-subnet-group"
  subnet_ids = [aws_subnet.private-us-east-1a.id, aws_subnet.private-us-east-1b.id]
}