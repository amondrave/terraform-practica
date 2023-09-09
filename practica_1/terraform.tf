resource "local_file" "datos" {
  content = "Lista de datos de usuarios"
  filename = "datos.txt"
}