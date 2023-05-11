resource "random_pet" "name" { 

}

output "clever_name" {
  value = random_pet.name.id
} 
