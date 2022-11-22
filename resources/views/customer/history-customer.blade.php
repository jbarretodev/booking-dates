@extends('layouts.app')
@section('content')
    <!-- category datatable -->
    <div class="row">
        <div class="col-md-12">
            <div class="main-card card">
                <div class="card-header">
                    <div class="d-flex align-items-center">
                        <h4 class="card-title">
                            Ficha historial del cliente
                        </h4>
                    </div>
                </div>
                <input type="hidden" id="customerId" value="{{ $customer->id }}">
                <div class="card-body">
                    <form>
                        <div class="row">
                            <div class="col form-group">
                                <label>{{translate('Customer Name')}}</label>
                                <input type="text" id="complete-name" class="form-control" value="{{ $customer->full_name ?? 'N/A' }}" disabled placeholder="Nombre Completo">
                            </div>
                            <div class="col form-group">
                                <label>Customer Email</label>
                                <input type="text" class="form-control" value="{{ $user->email ?? 'N/A' }}" disabled placeholder="Email">
                            </div>
                        </div>
                        <div class="row mt-1">
                            <div class="col form-group">
                                <label>{{translate('Date of Birth')}} </label>
                                <input type="text" class="form-control" value="{{ $customer->dob }}" disabled placeholder="Fecha de Nacimiento">
                            </div>
                            <div class="col form-group">
                                <label class="col-md-12 p-0">{{translate('Customer Phone')}}</label>
                                <input type="text" class="form-control" value="{{ $customer->phone_no }}" disabled placeholder="Telefono">
                            </div>
                        </div>
                        <div class="row mt-1">
                            <div class="col form-group">
                                <label>{{translate('Country')}}</label>
                                <input type="text" class="form-control" value="{{ $customer->country }}" disabled placeholder="Pais">
                            </div>
                            <div class="col form-group">
                                <label>{{translate('City')}}</label>
                                <input type="text" class="form-control" value="{{ $customer->city }}" disabled placeholder="Ciudad">
                            </div>
                        </div>
                        <div class="row mt-1">
                            <div class="col form-group">
                                <label>{{translate('Street Address')}}</label>
                                <textarea name="address" placeholder="Direccion" class="form-control" id="" cols="20" disabled rows="5">
                                    {{ $customer->street_address }}
                                </textarea>
                            </div>
                            <div class="col form-group">
                                <label>{{translate('Postal Code')}}</label>
                                <input type="text" class="form-control" value="{{ $customer->postal_code }}" disabled placeholder="Codigo Postal">
                            </div>
                        </div>
                        <div class="row mt-1">
                            <div class="col form-group">
                                <label>{{translate('State Name')}}</label>
                                <input type="text" class="form-control" value="{{ $customer->state }}" disabled placeholder="Estado">
                            </div>
                            <div class="col form-group">
                                <label>{{translate('Remarks')}}</label>
                                <input type="text" class="form-control" value="{{ $customer->remarks }}" disabled placeholder="Observaciones">
                            </div>
                        </div>
                    </form>
                    <hr class="mt-2">
                    <h4 class="card-title">
                        Historial de Citas
                    </h4>
                    <table id="tableElement" class="mt-3 table table-bordered w100"></table>

                    <hr class="mt-2">
                    <h4 class="card-title">
                        Registro de Antecedentes
                    </h4>

                    <form>
                        <div class="form-group">
                            <label for="record_past">Antecedentes</label>
                            <textarea class="form-control" name="record_past" id="record_past" cols="30" rows="5"></textarea>
                        </div>
                        <button type="button" id="send_past" class="btn btn-primary">Enviar</button>
                    </form>

                    <hr class="mt-3">
                    <h4 class="card-title">
                        Subida de Archivos
                    </h4>
                    <form class="form-inline">
                        <div class="form-group">
                            <label for="file_up">Seleccione un Archivo</label>
                            <input type="file" class="form-control-file" id="file_up">
                            <button type="button" id="upload-file" class="mt-2 btn btn-primary">Subir Archivo</button>
                        </div>
                    </form>

                    <hr class="mt-3">
                    <h4 class="card-title">
                        Listado de Archivos
                    </h4>

                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <td>Nombre del Archivo</td>
                            <td>Url</td>
                        </tr>
                        </thead>
                        <tbody id="tbody_files">

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script>
      var dTable = null;
      var _id = null;

      $(function(){
        getBooking();
        Manager.LoadAllFiles($('#customerId').val());
        //generate datatabe serial no
        dTableManager.dTableSerialNumber(dTable);

        $("#upload-file").click(function(){
          if( document.getElementById("file_up").files.length == 0 ){
            alert("Error! Debe seleccionar un archivo");
            return false;
          }

          var formData = new FormData();
          formData.append('file', $('#file_up')[0].files[0]);
          formData.append('customer_id',$("#customerId").val());

          Manager.UploadFile(formData);
        });

        $("#send_past").click(function(){
          if( $.trim($("#record_past").val()) === "" ){
            alert("Error! El campo de antecedente esta vacio!");
            return false;
          }

          Manager.SendRecordPast({
            description:$("#record_past").val(),
            cmn_customer_id: $('#customerId').val(),
          });
        });
      });

      var Manager = {
        GetDataList: function (refresh) {
          JsManager.StartProcessBar();
          var jsonParam = {
            customerId: $("#customerId").val(),
            onlyCustomer: true,
          };
          var serviceUrl = "get-service-booking-info";
          JsManager.SendJsonAsyncON('GET', serviceUrl, jsonParam, onSuccess, onFailed);

          function onSuccess(jsonData) {
            Manager.LoadDataTable(jsonData.data, refresh);
            JsManager.EndProcessBar();
          }

          function onFailed(xhr, status, err) {
            JsManager.EndProcessBar();
            Message.Exception(xhr);
          }
        },
        LoadDataTable: function (data, refresh) {
          if (refresh === 0) {
            dTable = $('#tableElement').DataTable({
              dom: "<'row'<'col-md-12'tr>>" + "<'row'<'col-md-4'i><'col-md-3 mt-2'l><'col-md-5 mt-7'p>>",
              initComplete: function () {
                dTableManager.Border(this, 450);
              },
              buttons: [],

              scrollY: "450px",
              scrollX: true,
              scrollCollapse: true,
              lengthMenu: [[50, 100, 500, -1], [50, 100, 500, "All"]],
              columnDefs: [
                { visible: false, targets: [] },
                { "className": "dt-center", "targets": [3] }
              ],
              columns: [
                {
                  data: null,
                  name: '',
                  'orderable': false,
                  'searchable': false,
                  title: '#SL',
                  width: 8,
                  render: function () {
                    return '';
                  }
                },
                {
                  data: 'id',
                  name: 'id',
                  title: 'No#'
                },
                {
                  data: 'date',
                  name: 'date',
                  title: 'Date',
                  render: function (data, type, row) {
                    return moment(data).format('MMM DD, YYYY');
                  }
                },
                {
                  data: 'service',
                  name: 'service',
                  title: 'Service Info',
                  render: function (data, type, row) {
                    return '<div class="flex-1 ml-3 pt-1">' +
                      '<h6 class="text-uppercase fw-bold mb-1">' +
                      row['service'] +
                      '<span class="' + Manager.ServiceFontColorClass(row['status']) + ' pl-3">' + Manager.ServiceStatus(row['status']) + '</span>' +
                      '</h6>' +
                      '<span class="text-muted">' +
                      row['customer'] + " | " + row['customer_phone_no'] + " | <span class='text-primary'>" + moment(row['date'] + ' ' + row['start_time']).format('LT') + " to " + moment(row['date'] + ' ' + row['end_time']).format('LT') + "</span><br/>" +
                      "Due# <span class='text-danger'>" + parseFloat(row['due']).toFixed(2) + "</span> | " + (row['remarks'] == null ? "No remarks found!" : row['remarks'])
                      + '</span>' +
                      '</div>';
                  }
                },
                {
                  data: 'branch',
                  name: 'branch',
                  title: 'Branch'
                },
                {
                  data: 'employee',
                  name: 'employee',
                  title: 'Staff/Employee'
                },
                {
                  name: 'Option',
                  title: 'Option',
                  width: 70,
                  render: function (data, type, row) {
                    return '<button class="btn btn-sm btn-primary dt-button-action"><i class="fas fa-location-arrow"></i> Action</button>';
                  }
                },
              ],
              fixedColumns: false,
              data: data
            });
          } else {
            dTable.clear().rows.add(data).draw();
          }
        },
        UploadFile: function(data){
          JsManager.StartProcessBar();
          var serviceUrl = "save-file";
          JsManager.SendJsonWithFile('POST', serviceUrl, data, onSuccess, onFailed);

          function onSuccess(jsonData) {
            Manager.LoadAllFiles($('#customerId').val());
            JsManager.EndProcessBar();
          }

          function onFailed(xhr, status, err) {
            JsManager.EndProcessBar();
            Message.Exception(xhr);
          }
        },
        LoadAllFiles: function(id){
          JsManager.StartProcessBar();
          var serviceUrl = "get-files/" + id;
          JsManager.SendJsonAsyncON('GET', serviceUrl, {}, onSuccess, onFailed);

          function onSuccess(jsonData) {
            JsManager.EndProcessBar();

            $("#tbody_files").html("");

            for(var i = 0; i < jsonData.length; i++){
              var html = `<tr>
                            <td>${jsonData[i]['name']}</td>
                            <td><a href="${jsonData[i]['path']}">${jsonData[i]['path']}</td>
                         </tr>`;
              $("#tbody_files").append(html);
            }
          }

          function onFailed(xhr, status, err) {
            JsManager.EndProcessBar();
            Message.Exception(xhr);
          }
        },
        SendRecordPast: function(data){
          JsManager.StartProcessBar();

          var serviceUrl = "save-record-past";
          JsManager.SendJsonAsyncON('POST', serviceUrl, data, onSuccess, onFailed);

          function onSuccess(jsonData) {
            alert("Antecedente Registrado");
            $("#record_past").val("");
            JsManager.EndProcessBar();
          }

          function onFailed(xhr, status, err) {
            JsManager.EndProcessBar();
            Message.Exception(xhr);
          }
        },
        ServiceStatus: function (status) {
          var serviceStatus = ['Pending', 'Processing', 'Approved', 'Cancel', 'Done'];
          return serviceStatus[status];
        },
        ServiceFontColorClass: function (status) {
          var serviceColor = ['fc_pending', 'fc_processing', 'fc_approved', 'fc_cancel', 'fc_done'];
          return serviceColor[status];
        },
        ChangeServiceStatus: function (form) {
          if (Message.Prompt()) {
            JsManager.StartProcessBar();
            var jsonParam = form.serialize();
            var serviceUrl = "change-service-booking-status";
            JsManager.SendJson("POST", serviceUrl, jsonParam, onSuccess, onFailed);

            function onSuccess(jsonData) {
              if (jsonData.status == "1") {
                Message.Success("Successfully update service status to " + Manager.ServiceStatus($("#status").val()));
                Manager.ResetForm();
                $("#frmModal").modal('hide');
                Manager.GetDataList(1); //reload datatable
              } else {
                Message.Error("Failed to update service status for " + Manager.ServiceStatus($("#status").val()));
              }
              JsManager.EndProcessBar();
            }
            function onFailed(xhr, status, err) {
              JsManager.EndProcessBar();
              Manager.ResetForm();
              Message.Exception(xhr);
            }
          }
        },
      };

      function getBooking(){
        Manager.GetDataList(0);
      }


    </script>
@endsection