output "fsx_ontap" {
  description = "FSxN Object"
  value       = aws_fsx_ontap_file_system.fsx_ontap_fs
}

output "fsx_management_management_ip" {
  description = "FSxN Management IP"
  value       = aws_fsx_ontap_file_system.fsx_ontap_fs.endpoints[0].management[0].ip_addresses
}

output "fsx_svm" {
  description = "FSxN SVM Info"
  value       = aws_fsx_ontap_storage_virtual_machine.fsxsvm01
}

output "fsx_svm_iscsi_endpoints" {
  description = "FSxN SVM iSCSI endpoints"
  value       = aws_fsx_ontap_storage_virtual_machine.fsxsvm01.endpoints[0].iscsi[0].ip_addresses
}

output "fsx_svm_nas_endpoints" {
  description = "FSxN SVM NAS endpoints"
  value       = aws_fsx_ontap_storage_virtual_machine.fsxsvm01.endpoints[0].nfs[0].ip_addresses
}

output "fsx_svm_nas_endpoints_dns" {
  description = "FSxN SVM NAS endpoints"
  value       = aws_fsx_ontap_storage_virtual_machine.fsxsvm01.endpoints[0].nfs[0].dns_name
}

output "fsx_volume_1" {
  description = "FSxN Volume 1"
  value       = aws_fsx_ontap_volume.fsxvol01
}

output "fsx_volume_2" {
  description = "FSxN Volume 2"
  value       = aws_fsx_ontap_volume.fsxvol02
}

output "fsx_volume_3" {
  description = "FSxN Volume 3"
  value       = aws_fsx_ontap_volume.fsxvol03
}
