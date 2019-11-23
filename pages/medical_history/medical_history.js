function openMedicalStatus(id) {
  var url = $hieUtil.getBaseUrl() + $medical_status + "?medical_status_id=" + id;
  document.getElementById("iframe-medical").src = url;
}
