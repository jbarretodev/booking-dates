@extends('layouts.app')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="main-card card">
            <div class="card-header">
                <div class="d-flex align-items-center">
                    <h4 class="card-title">
                        Subida de archivos o imágenes
                    </h4>
                </div>
            </div>
            <div class="card-body">

                <form class="form-inline justify-content-center">
                    <div class="form-group">
                        <label for="file_up">Seleccione un Archivo</label>
                        <input type="file" class="form-control-file" id="file_up">
                        <button type="button" id="upload-file" class="mt-2 btn btn-primary">Subir Archivo</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>
<script>
  $(function(){

    $("#uploadFiles").click(function(){
      if( document.getElementById("file_up").files.length == 0 ){
        alert("Error! Debe seleccionar un archivo");
        return false;
      }
      var customer = window.location.href.split('/').pop();
      var formData = new FormData();

      formData.append('file', $('#file_up')[0].files[0]);
      formData.append('customer_id',customer);

      Manager.UploadFile(formData);
    });

    var Manager = {
      UploadFile: function(data){
        JsManager.StartProcessBar();
        var serviceUrl = "save-file";
        JsManager.SendJsonWithFile('POST', serviceUrl, data, onSuccess, onFailed);

        function onSuccess(jsonData) {
          alert("Archivo subido exitosamente!");
          //Manager.LoadAllFiles($('#customerId').val());
          JsManager.EndProcessBar();
        }

        function onFailed(xhr, status, err) {
          JsManager.EndProcessBar();
          Message.Exception(xhr);
        }
      },
    };
  });
</script>
@endsection