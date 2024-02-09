variable "vm_name" {
  type=string
  default = "myvm1"
}
variable "vm_size" {
  type=string
  default = "Standard_F2"
}
variable "vm_admin_username" {
  type=string
  default = "testuser"
}
variable "vm_admin_pass" {
  type=string
  default = "Testusr@1234567"
}