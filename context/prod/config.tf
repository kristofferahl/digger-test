terraform {
  required_providers {
    healthchecksio = {
      source  = "kristofferahl/healthchecksio"
      version = "1.10.1"
    }
  }
}

provider "healthchecksio" {
}
