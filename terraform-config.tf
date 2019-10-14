terraform {
  backend "gcs" {
    bucket = "walterdolce-cd-pipeline-terraform-state"
    credentials = "service-account-key.json"
  }
}