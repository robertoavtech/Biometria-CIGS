// Call the dataTables jQuery plugin
$(document).ready(function() {
  $('#dataTable').DataTable({
        "language": {
            "lengthMenu": "Mostrando _MENU_ registros por página",
            "info": "Mostrando página _PAGE_ of _PAGES_"
        }
    });
});
