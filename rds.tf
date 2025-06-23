resource "aws_db_instance" "mysql" {
  identifier         = "my-db"
  engine             = "mysql"
  engine_version     = "8.0.41"
  instance_class     = "db.t3.micro"
  allocated_storage  = 20
  name               = var.db_name
  username           = var.db_username
  password           = var.db_password
  publicly_accessible = true
  multi_az           = false
  skip_final_snapshot = true
  db_subnet_group_name = aws_db_subnet_group.main.name
  vpc_security_group_ids = [aws_security_group.db_sg.id]
}
