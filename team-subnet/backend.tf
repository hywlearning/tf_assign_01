terraform { 
  cloud { 
    
    organization = "terraform-hyw" 

    workspaces { 
      name = "team-subnet" 
    } 
  } 
}
