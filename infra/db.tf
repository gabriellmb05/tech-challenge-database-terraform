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
}
