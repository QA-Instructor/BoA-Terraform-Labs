terraform {
  required_providers {
    mynewprovider = {
      source  = "custom/mynewprovider"
      version = "0.1.0"
    }
  }
}

provider "mynewprovider" {}

resource "mynewprovider_task" "example" {
  title       = "From custom provider XXX"
  description = "Created using mynewprovider"
  completed   = true
}

resource "mynewprovider_task" "example2" {
  title       = "Victoria's fancy task"
  description = "Created using mynewprovider"
  completed   = true
}