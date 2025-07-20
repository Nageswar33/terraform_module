module "Nageswar"{
  source = "../module_terraform/local_module"
  instance_type = var.instance_type
 }

output "Nageswar" {
    value = module.Nageswar

}

variable "instance_type" {
    default = "t2.micro"
}

