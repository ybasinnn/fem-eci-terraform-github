terraform { 
  cloud { 
    
    organization = "DanchoOrg" 

    workspaces { 
      name = "fem-eci-github" 
    } 
  } 
}