variable "my_rg" {
    description = "All available RGs"
    type = map(object({
      name = string
      location = string
    }))
}
    



