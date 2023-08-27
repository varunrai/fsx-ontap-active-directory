resource "aws_instance" "ec2-demo-fsx-win" {
  ami           = data.aws_ami.windows-sql-server.id
  instance_type = var.ec2_instance_type
  monitoring    = false

  vpc_security_group_ids = var.security_groups_ids
  subnet_id              = var.ec2_subnet_id
  key_name               = var.instance_keypair
  iam_instance_profile   = "VarunS_FSxN_ReadOnlyRole"

  root_block_device {
    volume_type = "gp2"
    volume_size = 50
    tags = {
      "creator" = "${var.creator_tag}"
    }
  }

  user_data = <<EOT
    <powershell>
      Add-WindowsFeature AD-Domain-Services
      Add-WIndowsFeature RSAT-AD-Tools
      $Pass = ConvertTo-SecureString "Netapp#1" -AsPlainText -Force 
      Install-ADDSForest -DomainName ad.fsxn.com -InstallDNS -SafeModeAdministratorPassword $Pass -Force:$true
      New-ADOrganizationalUnit -Name "FSXN" -Path "DC=AD,DC=FSXN,DC=COM" 
      $Pass = ConvertTo-SecureString "Netapp#1" -AsPlainText -Force 
      New-ADUser -Name fsxnadmin -AccountPassword $Pass -Passwordneverexpires $true -Enabled $true -ChangePasswordAtLogon $false
      Add-ADGroupMember -Identity "Domain Admins" -Members fsxnadmin
      Add-ADGroupMember -Identity "Administrators" -Members fsxnadmin
    </powershell>
    <persist>true</persist>
  EOT 

  tags = {
    Name = "${var.creator_tag}-${var.instance_name}-ad"
  }
}
