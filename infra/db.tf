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
  subnet_ids = [data.terraform_remote_state.vpc.outputs.private_subnet_east_1a_id, data.terraform_remote_state.vpc.outputs.private_subnet_east_1b_id]
}

