@extends('layouts.app')
@section('content')
    <!--Modal add menu-->
    <div class="modal fade" id="frmModalCustoH" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <form class="form-horizontal" id="inputFormH" novalidate="novalidate" enctype="multipart/form-data">


                    <div class="modal-header">
                        <h5 class="modal-title">
                            <span class="fw-mediumbold">
                                {{translate('Customer Info')}}
                            </span>
                        </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>


                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-7">
                                <div class="form-group control-group form-inline controls">
                                    <label>{{translate('Customer Name')}} *</label>
                                    <input type="text" value="{{ $customer->full_name ?? 'N/A' }}" id="full_name" name="full_name" placeholder="{{translate('Full name')}}" required data-validation-required-message="Customer name is required" class="form-control input-full" />
                                    <span class="help-block"></span>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="form-group control-group form-inline controls">
                                    <label>{{translate('System User')}}</label>
                                    <select name="user_id" id="user_id" class="form-control input-full">
                                        @foreach($customers as $custo)
                                            <option value="{{$custo->id}}">{{$custo->full_name}}</option>
                                        @endforeach
                                    </select>
                                    <span class="help-block"></span>
                                </div>
                            </div>
                        </div>

                        <div class="form-group control-group form-inline controls">
                            <label>Customer Email *</label>
                            <input type="email" id="email" value="{{ $customer->email }}" name="email" placeholder="email@example.com" required data-validation-required-message="Email address is required" class="form-control input-full" />
                            <span class="help-block"></span>
                        </div>

                        <div class="row">
                            <div class="col-md-7">
                                <div class="form-group control-group form-inline controls">

                                    <label class="col-md-12 p-0">{{translate('Customer Phone')}} *</label>
                                    <input type="tel" value="{{ $customer->phone_no }}" id="phone_no" maxlength="20" name="phone_no" placeholder="{{translate('Phone Number')}}" required data-validation-required-message="Phone number is required" class="form-control input-full w-100" />
                                    <span class="help-block"></span>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="form-group control-group form-inline controls">
                                    <label>{{translate('Date of Birth')}} </label>
                                    <input type="text" value="{{ $customer->dob }}" id="dob" name="dob" class="form-control input-full datePicker" />
                                    <span class="help-block"></span>
                                </div>
                            </div>
                        </div>

                        <div class="form-group control-group form-inline ">
                            <label>{{translate('Street Address')}} *</label>
                            <textarea type="text" id="street_address" name="street_address" required data-validation-required-message="Street address is required" class="form-control input-full"></textarea>
                            <span class="help-block">{{ $customer->street_address }}</span>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group control-group form-inline controls">
                                    <label>{{translate('Country')}}</label>
                                    <input type="text" id="country" value="{{ $customer->country }}" name="country" class="form-control input-full" />
                                    <span class="help-block"></span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group control-group form-inline controls">
                                    <label>{{translate('City')}}</label>
                                    <input type="text" value="{{ $customer->city }}" id="city" name="city" class="form-control input-full" />
                                    <span class="help-block"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group control-group form-inline controls">
                                    <label>{{translate('State Name')}}</label>
                                    <input type="text" value="{{ $customer->state }}" id="state" name="state" class="form-control input-full" />
                                    <span class="help-block"></span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group control-group form-inline controls">
                                    <label>{{translate('Postal Code')}}</label>
                                    <input type="number" value="{{ $customer->postal_code }}" id="postal_code" name="postal_code" class="form-control input-full" />
                                    <span class="help-block"></span>
                                </div>
                            </div>
                        </div>

                        <div class="form-group control-group form-inline controls">
                            <label>{{translate('Remarks')}}</label>
                            <input type="text" value="{{ $customer->remarks }}" id="remarks" name="remarks" class="form-control input-full" />
                            <span class="help-block"></span>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">{{translate('Close')}}</button>
                        <button type="submit" class="btn btn-success btn-sm">{{translate('Save Change')}}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!--Modal-->
    <div class="modal fade" id="frmModalHiiis" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <form class="form-horizontal" id="inputForm" novalidate="novalidate">
                    <div class="modal-body">
                        <h5 class="modal-title">
                            <span class="fw-mediumbold">
                            {{translate('Booking No#')}} <span id="span-booking-no"></span>
                            </span>
                        </h5>
                        <input type="hidden" id="id" name="id" />
                        <div class="form-group control-group form-inline">
                            <div class="row">
                                <div class="col-md-12">
                                    <span>{{translate('Service Status')}}</span>
                                    <select id="status" name="status" class="form-control input-full">
                                        <option selected value="0">Pending</option>
                                        <option value="1">Processing</option>
                                        <option value="2">Approved</option>
                                        <option value="3">Cancel</option>
                                        <option value="4">Done</option>
                                    </select>
                                </div>
                                <div class="col-md-12 control-group">
                                    <div class="form-group control-group form-inline">
                                        <label class="switch">
                                            <input id=email_notify name="email_notify" type="checkbox" value="1" class="rm-slider">
                                            <span class="slider round"></span>
                                        </label>
                                        <label class="pt-1 ml-1"> {{translate('Send notification by email')}}</label>
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="modal-footer pb-0 pr-2">
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">{{translate('Close')}}</button>
                            <button type="submit" class="btn btn-success btn-sm">{{translate('Save Change')}}</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!--Modal-->
    <div class="modal fade" id="modal-up-record" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-md" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Actualizacion de Historial o Antecedente</h5>
                </div>
                <form novalidate="novalidate">
                    <div class="modal-body">
                        <input type="hidden" id="id-record" name="id" />
                        <div class="form-group">
                            <label for="upDateTitle">Titulo</label>
                            <input class="form-control" type="text" id="upDateTitle">
                        </div>
                        <div class="form-group">
                            <label for="upDateDescrip">Descripcion</label>
                            <textarea class="form-control" name="upDateDescrip" id="upDateDescrip" cols="30" rows="10"></textarea>
                        </div>

                        <div class="modal-footer pb-0 pr-2">
                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">{{translate('Close')}}</button>
                            <button type="button" id="upRecord" class="btn btn-success btn-sm">{{translate('Save Change')}}</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- category datatable -->
    <div class="row">
        <div class="col-md-12">
            <div class="main-card card">
                <div class="card-header">
                    <div class="d-flex align-items-center navbar navbar-expand-lg">

                        <h4 class="navbar-brand">Ficha Historica</h4>

                        <button class="navbar-toggler more" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon-menu"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav mr-auto">
                                <li class="navbar-item">
                                    <button type="button" class="btn btn-light historical_patient">Historial</button>
                                </li>
                                <li class="navbar-item">
                                    <button type="button" class="btn btn-light editCustoH">Datos</button>
                                </li>
                                <li class="navbar-item">
                                    <button id="history_pa" type="button" class="btn btn-light">Citas</button>
                                </li>
                                <li class="navbar-item">
                                    <button id="record_pa" type="button" class="btn btn-light">Antecedentes</button>
                                </li>
                                <li class="navbar-item">
                                    <div class="dropdown">
                                        <button class="btn btn-light dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                                            Archivos
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" id="files_pa" href="#">Ver Archivos</a>
                                            <a class="dropdown-item" id="upload_files" href="#">Cargar Archivo</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="navbar-item">
                                    <div class="dropdown">
                                        <button class="btn btn-light dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                                            Im??genes
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" id="image_his" href="#">Galer??a de Im??genes</a>
                                            <a class="dropdown-item" id="upload_images" href="#">Subir Imagenes</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <input type="hidden" id="customerId" value="{{ $customer->id }}">

                <div class="card-body">

                    <div id="historical_pat">
                        <h4 class="card-title">
                            Registro de Historial
                        </h4>
                        <form>
                            <div class="form-group">
                                <label for="title_record_past">Titulo</label>
                                <input class="form-control" name="title_record_past" id="title_record_past">
                            </div>
                            <div class="form-group">
                                <label for="record_past_his">Historial</label>
                                <textarea class="form-control" name="record_past" id="record_past_his" cols="30" rows="5"></textarea>
                            </div>
                            <button type="button" id="send_past_histo" class="btn btn-primary">Enviar</button>
                        </form>

                        <div class="table-responsive">
                            <table class="table table-bordered mt-3">
                                <thead>
                                <tr>
                                    <td>Titulo</td>
                                    <td>Descripci??n</td>
                                    <td>Fecha de Creacion</td>
                                    <td>Acciones</td>
                                </tr>
                                </thead>
                                <tbody id="tbl-record-his">

                                </tbody>
                            </table>
                        </div>
                        <hr class="mt-3">
                    </div>

                    <div id="history_patient">
                        <h4 class="card-title">
                            Historial de Citas
                        </h4>
                        <div class="table-responsive">
                            <table id="tableElement" class="mt-3 table table-bordered w100"></table>
                        </div>
                        <hr class="mt-2">
                    </div>

                    <div id="record_back">
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

                        <div class="table-responsive">
                            <table class="table table-bordered mt-3">
                                <thead>
                                <tr>
                                    <td>Descripci??n</td>
                                    <td>Fecha de Creacion</td>
                                    <td>Acciones</td>
                                </tr>
                                </thead>
                                <tbody id="tbl-record">

                                </tbody>
                            </table>
                        </div>
                        <hr class="mt-3">
                    </div>

                    <div id="files_patient">
                        <h4 class="card-title">
                            Listado de Archivos
                        </h4>
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <td>Nombre del Archivo</td>
                                    <td>Fecha De Subida</td>
                                    <td>Acciones</td>
                                </tr>
                                </thead>
                                <tbody id="tbody_files">

                                </tbody>
                            </table>
                        </div>
                        <hr class="mt-3">
                    </div>

                    <div id="images_his">
                        <h4>Galeria de Imagenes</h4>

                        <div class="demo-gallery">
                            <ul id="lightgallery" class="list-unstyled row">

                            </ul>
                        </div>

                        <hr class="mt-3">
                    </div>

                    <div id="upload-files">
                        <h4 class="card-title">
                            Subida de archivos o im??genes
                        </h4>

                        <form class="form-inline justify-content-center">
                            <div class="form-group">
                                <label for="file_up">Seleccione un Archivo</label>
                                <input type="file" class="form-control-file" id="file_up">
                                <button type="button" id="uploadFiles" class="mt-2 btn btn-primary">Subir Archivo</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="{{ dsAsset('js/lib/lightGallery.js') }}"></script>
    <script type="text/javascript">
      var dTable = null;
      var _id = null;

      $(function(){
        initTelephone = window.intlTelInput(document.querySelector("#phone_no"), {
          allowDropdown: true,
          autoHideDialCode: false,
          dropdownContainer: document.body,
          excludeCountries: [],
          formatOnDisplay: false,
          geoIpLookup: function (callback) {
            var jsonParam = '';
            var serviceUrl = "get-requested-country-code";
            JsManager.SendJson('GET', serviceUrl, jsonParam, onSuccess, onFailed);

            function onSuccess(jsonData) {
              if (jsonData.status == 1) {
                callback(jsonData.data);
              } else {
                callback("US");
              }
            }
            function onFailed(xhr, status, err) {
            }
          },
          initialCountry: "auto",
          nationalMode: true,
          placeholderNumberType: "MOBILE",
          separateDialCode: true,
          utilsScript: "js/lib/tel-input/js/utils.js",
        });
        getBooking();
        Manager.LoadAllFiles($('#customerId').val());
        Manager.LoadAllFilesImages($('#customerId').val());
        Manager.LoadAllRecordPast($('#customerId').val());
        Manager.LoadAllRecordPastHis($('#customerId').val());

        $("#upRecord").click(function(){
          Manager.UpdateRecordPast();
        });

        //save or update
        JsManager.JqBootstrapValidation('#inputFormH', (form, event) => {
          event.preventDefault();
          if ($.trim($("#customerId").val()) == "") {
            Manager.Save(form);
          } else {
            Manager.Update(form, $("#customerId").val());
          }
        });

        $("#history_patient").show();
        $("#record_back").hide();
        $("#images_his").hide();
        $("#data_patient").hide();
        $("#files_patient").hide();
        $("#upload-files").hide();
        $("#historical_pat").hide();

        $("#uploadFiles").click(function(){
          if( document.getElementById("file_up").files.length == 0 ){
            alert("Error! Debe seleccionar un archivo");
            return false;
          }

          var formData = new FormData();

          formData.append('file', $('#file_up')[0].files[0]);
          formData.append('customer_id', $("#customerId").val());

          Manager.UploadFile(formData);
        });

        $("#send_past_histo").click(function(){

          if( $.trim($("#title_record_past").val()) === "" ){
            alert("Error! El titulo del historial esta vacio!");
            return false;
          }

          if( $.trim($("#record_past_his").val()) === "" ){
            alert("Error! El campo de historial esta vacio!");
            return false;
          }

          Manager.SendRecordPastHis({
            description: $("#record_past_his").val(),
            title: $("#title_record_past").val(),
            cmn_customer_id: $('#customerId').val(),
            status: 1,
          });
        });


        initTelephone.setNumber('+' + {{$customer->phone_no}});

        //show edit info modal
        $(document).on('click','.editCustoH', function () {
          //var rowData = dTable.row($(this).parent()).data();
          _id = $("#customerId").val();
          $("#frmModalCustoH").modal('show');
        });

        $(document).on('click',"button[id^='file-']",function(){
          Manager.DeleteFiles($(this).attr('id').split('-').pop());
        });

        $(document).on('click',"button[id^='record-']",function(){
          Manager.DeleteRecordPast($(this).attr('id').split('-').pop());
        });

        //generate datatabe serial no
        dTableManager.dTableSerialNumber(dTable);

        $("#send_past").click(function(){
          if( $.trim($("#record_past").val()) === "" ){
            alert("Error! El campo de antecedente esta vacio!");
            return false;
          }

          Manager.SendRecordPast({
            description:$("#record_past").val(),
            cmn_customer_id: $('#customerId').val(),
            status: 2,
          });
        });

        $("#history_pa").click(function(){
          $("#history_patient").show();
          $("#record_back").hide();
          $("#images_his").hide();
          $("#files_patient").hide();
          $("#upload-files").hide();
          $("#historical_pat").hide();
        });

        $("#record_pa").click(function(){
          $("#history_patient").hide();
          $("#record_back").show();
          $("#images_his").hide();
          $("#files_patient").hide();
          $("#upload-files").hide();
          $("#historical_pat").hide();
        });

        $("#files_pa").click(function(){
          $("#history_patient").hide();
          $("#record_back").hide();
          $("#images_his").hide();
          $("#files_patient").show();
          $("#upload-files").hide();
          $("#historical_pat").hide();
        });

        $("#image_his").click(function(){
          $("#history_patient").hide();
          $("#record_back").hide();
          $("#images_his").show();
          $("#files_patient").hide();
          $("#upload-files").hide();
          $("#historical_pat").hide();
        });

        $("#upload_files, #upload_images").click(function(){
          $("#history_patient").hide();
          $("#record_back").hide();
          $("#images_his").hide();
          $("#files_patient").hide();
          $("#upload-files").show();
          $("#historical_pat").hide();
        });

        $(".historical_patient").click(function(){
          $("#history_patient").hide();
          $("#record_back").hide();
          $("#images_his").hide();
          $("#files_patient").hide();
          $("#upload-files").hide();
          $("#historical_pat").show();
        });

        $(document).on('click', '.dt-button-action', function () {
          Manager.ResetForm();
          var rowData = dTable.row($(this).parent()).data();
          _id = rowData.id;
          $('#id').val(rowData.id);
          $('#span-booking-no').text(rowData.id);
          $('#status').val(rowData.status);

          $("#frmModalHiiis").modal('show');
        });

        $(document).on('click',"button[id^='up-record-']",function(){
          Manager.GetOneRecord($(this).attr('id').split('-').pop());
        })

        //save change status
        JsManager.JqBootstrapValidation('#inputForm', (form, event) => {
          event.preventDefault();
          Manager.ChangeServiceStatus(form);

        });
      });

      var Manager = {
        ResetForm: function () {
          $("#inputForm").trigger('reset');
        },
        Update: function (form, id) {
          if (Message.Prompt()) {
            JsManager.StartProcessBar();
            var jsonParam = form.serialize() + "&id=" + id + "&phone_no=" + $("#phone_no").val();
            var serviceUrl = "customer-update";
            JsManager.SendJson("POST", serviceUrl, jsonParam, onSuccess, onFailed);

            function onSuccess(jsonData) {
              if (jsonData.status == "1") {
                Message.Success("update");
                _id = null;
                Manager.ResetForm();
                //Manager.GetDataList(1); //reload datatable
              } else {
                Message.Error("update");
              }
              JsManager.EndProcessBar();

            }

            function onFailed(xhr, status, err) {
              JsManager.EndProcessBar();
              Message.Exception(xhr);
            }
          }
        },
        Save: function (form) {
          if (Message.Prompt()) {
            JsManager.StartProcessBar();
            var jsonParam = form.serialize() + "&phone_no=" + $("#phone_no").val();
            var serviceUrl = "customer-create";
            JsManager.SendJson("POST", serviceUrl, jsonParam, onSuccess, onFailed);

            function onSuccess(jsonData) {
              if (jsonData.status == "1") {
                Message.Success("save");
                Manager.ResetForm();
                //Manager.GetDataList(1); //reload datatable
              } else {
                Message.Error("save");
              }
              JsManager.EndProcessBar();
            }

            function onFailed(xhr, status, err) {
              JsManager.EndProcessBar();
              Message.Exception(xhr);
            }
          }
        },
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
            alert("Archivo subido exitosamente");
            Manager.LoadAllFiles($('#customerId').val());
            Manager.LoadAllFilesImages($('#customerId').val());
            JsManager.EndProcessBar();
          }

          function onFailed(xhr, status, err) {
            alert("Error Subiendo archivo, el archivo debe ser de formatos permitidos jpg,jpeg,png,svg,gift,webp,pdf,doc,docx");
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
                            <td> <a href="${jsonData[i]['path']}">${jsonData[i]['original_name']}</a></td>
                            <td>${jsonData[i]['created_at']}</td>
                            <td>
                              <button id="file-${jsonData[i]['id']}" class="btn btn-primary"><i class="fas fa-trash-alt"></i></button>
                            </td>
                         </tr>`;
              $("#tbody_files").append(html);
            }
          }

          function onFailed(xhr, status, err) {
            JsManager.EndProcessBar();
            Message.Exception(xhr);
          }
        },
        LoadAllFilesImages: function(id){
          JsManager.StartProcessBar();
          var serviceUrl = "get-files-image/" + id;
          JsManager.SendJsonAsyncON('GET', serviceUrl, {}, onSuccess, onFailed);

          function onSuccess(jsonData) {
            JsManager.EndProcessBar();
            console.log(jsonData);

            for(var i = 0; i < jsonData.length; i++){
              $("#lightgallery").append(`<li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="${jsonData[i]['path']}" data-src="${jsonData[i]['path']}" data-sub-html="<h4>Foto Subida</h4><p>${jsonData[i]['created_at']}</p>">
                                    <a href="">
                                        <img class="img-responsive" src="${jsonData[i]['path']}">
                                    </a>
                                </li>`);
            }
            $('#lightgallery').lightGallery().data('lightGallery').destroy(true);
            $('#lightgallery').lightGallery();
          }

          function onFailed(xhr, status, err) {
            JsManager.EndProcessBar();
            Message.Exception(xhr);
          }
        },
        LoadAllRecordPast: function(id){
          JsManager.StartProcessBar();
          JsManager.SendJsonAsyncON('GET', "get-record-past/" + id, {}, onSuccess, onFailed);

          function onSuccess(jsonData) {
            JsManager.EndProcessBar();

            $("#tbl-record").html("");

            for(var i = 0; i < jsonData.length; i++){
              var html = `<tr>
                            <td>${jsonData[i]['description']}</td>
                            <td>${jsonData[i]['created_at']}</td>
                            <td>
                              <button class="btn btn-primary" id="record-${jsonData[i]['id']}" class=""><i class="fas fa-trash-alt"></i></button>
                              <button class="btn btn-success" id="up-record-${jsonData[i]['id']}" class=""><i class="fas fa-pencil-alt"></i></button>
                            </td>
                         </tr>`;
              $("#tbl-record").append(html);
            }
          }

          function onFailed(xhr, status, err) {
            JsManager.EndProcessBar();
            Message.Exception(xhr);
          }
        },
        LoadAllRecordPastHis: function(id){
          JsManager.StartProcessBar();
          JsManager.SendJsonAsyncON('GET', "get-record-past-his/" + id, {}, onSuccess, onFailed);

          function onSuccess(jsonData) {
            JsManager.EndProcessBar();

            $("#tbl-record-his").html("");

            for(var i = 0; i < jsonData.length; i++){
              var html = `<tr>
                            <td>${jsonData[i]['title']}</td>
                            <td>${jsonData[i]['description']}</td>
                            <td>${jsonData[i]['created_at']}</td>
                            <td>
                              <button class="btn btn-primary" id="record-${jsonData[i]['id']}" class=""><i class="fas fa-trash-alt"></i></button>
                              <button class="btn btn-success" id="up-record-${jsonData[i]['id']}" class=""><i class="fas fa-pencil-alt"></i></button>
                            </td>
                         </tr>`;
              $("#tbl-record-his").append(html);
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
            Manager.LoadAllRecordPast($('#customerId').val());
            JsManager.EndProcessBar();
          }

          function onFailed(xhr, status, err) {
            JsManager.EndProcessBar();
            Message.Exception(xhr);
          }
        },
        SendRecordPastHis: function(data){
          JsManager.StartProcessBar();

          var serviceUrl = "save-record-past";
          JsManager.SendJsonAsyncON('POST', serviceUrl, data, onSuccess, onFailed);

          function onSuccess(jsonData) {
            alert("Historial Registrado");
            $("#record_past").val("");
            Manager.LoadAllRecordPastHis($('#customerId').val());
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
        DeleteFiles: function(id){
          JsManager.StartProcessBar();

          var serviceUrl = "delete-file/" + id;
          JsManager.SendJsonWithFile('GET', serviceUrl, {}, onSuccess, onFailed);

          function onSuccess(jsonData) {
            JsManager.EndProcessBar();
            Manager.LoadAllFiles($('#customerId').val());
          }

          function onFailed(xhr, status, err) {
            JsManager.EndProcessBar();
            Message.Exception(xhr);
          }
        },
        DeleteRecordPast: function(id){
          JsManager.StartProcessBar();

          var serviceUrl = "delete-record-past/" + id;
          JsManager.SendJsonWithFile('GET', serviceUrl, {}, onSuccess, onFailed);

          function onSuccess(jsonData) {
            JsManager.EndProcessBar();
            Manager.LoadAllRecordPast($('#customerId').val());
          }

          function onFailed(xhr, status, err) {
            JsManager.EndProcessBar();
            Message.Exception(xhr);
          }
        },
        GetOneRecord: function(id){
          JsManager.StartProcessBar();

          var serviceUrl = "get-record-get/" + id;
          JsManager.SendJsonWithFile('GET', serviceUrl, {}, onSuccess, onFailed);

          function onSuccess(jsonData) {
            JsManager.EndProcessBar();
            $("#upDateTitle").val(jsonData['title']);
            $("#upDateDescrip").val(jsonData['description']);
            $("#id-record").val(jsonData['id']);

            $("#modal-up-record").modal('show');
          }

          function onFailed(xhr, status, err) {
            JsManager.EndProcessBar();
            Message.Exception(xhr);
          }
        },
        UpdateRecordPast: function(){
          JsManager.StartProcessBar();
          var id = $("#id-record").val();
          var title = $("#upDateTitle").val();
          var description = $("#upDateDescrip").val();
          var serviceUrl = "get-record-past-update/" + id;

          JsManager.SendJson("POST", serviceUrl, {
            title,
            description
          }, onSuccess, onFailed);

          function onSuccess(jsonData) {
            JsManager.EndProcessBar();
            Manager.LoadAllRecordPastHis($("#customerId").val());
            $("#id-record").val("");
            $("#upDateTitle").val("");
            $("#upDateDescrip").val("");
            Message.Success("update");
          }

          function onFailed(xhr, status, err) {
            JsManager.EndProcessBar();
            Message.Error("update");
            Message.Exception(xhr);
          }
        },
      };

      function getBooking(){
        Manager.GetDataList(0);
      }


    </script>
@endsection