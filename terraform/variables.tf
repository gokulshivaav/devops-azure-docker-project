variable "ssh_public_key" {
  description = "Your SSH public key for VM login"
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMGSNvUvEuxhWMoTW/TM/DBBeeUjezrHUQ91IAmLS7MS gokulshivaav@gmail.com"
variable "github_token" {
  description = "GitHub Personal Access Token"
  sensitive   = true
}

variable "github_repository" {
  description = "GitHub repository name"
}
