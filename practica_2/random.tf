resource "random_string" "prefijo" {
  count   = 4  // Crea 4 sufijos de 0..3
  length  = 5
  special = false
  upper   = false
  numeric = false
}