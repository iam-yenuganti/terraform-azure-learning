# Resource Group
variable "rg_name" {
  type        = string
  default     = "terraform-working"
  description = "Resource Group name"
}

variable "location" {
  type        = string
  default     = "East US"
  description = "Azure location"
}

# Virtual Network
variable "vnet_name" {
  type        = string
  default     = "vnet-terraform-working"
}

variable "vnet_address_space" {
  type        = list(string)
  default     = ["10.150.150.0/24"]
}

# Subnets - splitting 10.150.150.0/24 into /26 ranges
variable "subnets" {
  type = list(object({
    name           = string
    address_prefix = string
  }))

  default = [
    {
      name           = "subnet1"
      address_prefix = "10.150.150.0/26"
    },
    {
      name           = "subnet2"
      address_prefix = "10.150.150.64/26"
    },
    {
      name           = "subnet3"
      address_prefix = "10.150.150.128/26"
    },
    {
      name           = "subnet4"
      address_prefix = "10.150.150.192/26"
    }
  ]
}
