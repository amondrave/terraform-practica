resource "local_file" "datos" {
  count = 4
  content  = "Lista de datos de usuarios"
  filename = "${random_string.prefijo[count.index].id}-datos.txt"
}



