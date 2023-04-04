provider "google" {
  project     = "na"
  region      = "us-central1"
}

resource "google_compute_firewall" "rules" {
  name        = "terraform-my-firewall-rule"
  network     = "na"
  description = "Creates firewall rule targeting tagged instances"

  allow {
    protocol  = "tcp"
    ports     = ["1500"]
  }
  disabled = true
  source_tags = ["foo"]
  target_tags = ["web"]
}
