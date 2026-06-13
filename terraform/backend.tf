terraform {
  backend "gcs" {
    bucket = "jeremy-portfolio-prod-tfstate"
    prefix = "terraform/state"
  }
}
