variable "project" {
  description = "Nome do projeto para criar a instancia"
  default     = "casandra-309923"
}

variable "zone" {
  description = "Zoneegião para criar a instancia"
  default     = "southamerica-east1-c"
}

variable "instance_name" {
  default     = ["cassandra-1"
  ,"cassandra-2"
  ,"cassandra-3"] 
}

variable "machine_type"{
  default = "n1-standard-2"
}

variable "network"{
  default = "default"
}

variable "image_name" {
  default = "centos-cloud/centos-8-v20210316"
}

variable "gce_ssh_key" {
  default = "pires:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCjWtVIRf1ghyNL+uVkLQN46Rjs6KHNXVHiZvtIxVtfGAbNHmMUUTU7dkvs4w+eAiMF0fx+A4xAqn8CPkjpfjVoLYkxqJIS3qJVvfiVjag7BEOVd4t7tt88Pk1yeBe9MrZhZBGR9F98eA3GwS9ibHcizO6OVu0U0plXzFXSkMC7DPycw2Y2XsIxZvqVuqU+XB4WgHy+5Tfzpvg8IGgu9X22f8prLrkthnL3xQKJw09JdA8a6k2PTHmVCkKXYmYyJoYrF6k4mDjoTfv9CWm8B2I5FYzLhQ2lOC5Q6wjrMBpd93dSgF1v3C9r/mrPylScTKUnuFx2OvxbfMcFY6wkFqnVAWk6UWgBj2KJVnFZgoEdWUOqTzCSBly5hFD7hcUNtEERviuo+LQ4NFEKQD9yGdL4y5Eq1+QbHLPASsdokg+fOGRYY40OIdL7LMAAhCMqoAitFWuFOD/yZbwwICBWICxPpp1yMepnBLWnrfaq7GOh4RWwbHWi85+JdeeF/kkJSxc= pires@dell"
}


