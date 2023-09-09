resource "aws_s3_bucket" "files_bucket" {
  bucket = "bucket-${random_string.sufijo.id}-amondrave" // Nombre unico en AWS
  tags = {
    Owner      = "Angel Mondragon"
    Enviroment = "Playground"
    Office     = "Amondrave"
  }
}


resource "aws_s3_object" "files_bucket_object" {
  key                    = "someobject"
  bucket                 = aws_s3_bucket.files_bucket.id
  source                 = local_file.index.filename
  depends_on = [ local_file.index ] # Crear primero el archivo para que el directorio lo encuentre
  server_side_encryption = "aws:kms"
}

resource "random_string" "sufijo" {
  length  = 8
  special = false
  upper   = false
  numeric = false
}