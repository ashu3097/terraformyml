variable "tags" {
  type        = map(string)
  description = "Tags for resources"
  default = {
    appowner = "Ashu"
    app    = "test"
    env    = "test"
    CreatedBy      = "Batman"
    Businessunit   = "I&T-Apps"
    Backup         = "Yes"
  }
}