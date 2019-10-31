resource "aws_db_instance" "myRdsDB" {
  name = "myDb"
  identifier = "my-first-rds"
  instance_class = "db.t2.micro"
  engine = "mariadb"
  engine_version="10.2.21"
  username = "bob"
  password = "Password123"
  port = 3306 
  allocated_storage = 20
  skip_final_snapshot = true
}
