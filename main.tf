# Configuração do Provider do Google Cloud
provider "google" {
  project = "true-hook-365817"   # Substitua pelo ID do seu projeto
  region  = "us-central1"        # Você pode alterar para a região desejada
  zone    = "us-central1-a"
}

# Criação de uma VM no Compute Engine
resource "google_compute_instance" "vm_teste" {
  name         = "vm-teste-terraform"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network       = "default"
    access_config {}
  }
}