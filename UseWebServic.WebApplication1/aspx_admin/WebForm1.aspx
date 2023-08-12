<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="UseWebServic.WebApplication1.aspx_admin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="../Content/bootstrap-rtl.css" rel="stylesheet" />
    <link href="../css_fonts/fonts/fonts.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.10.2.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
    <style>
        .table td {
            text-align: center;
        }

        .table-heading {
            color: #ffffff;
            background-color: gray;
            border-color: #dddddd;
        }
    </style>

</head>
<body dir="rtl">
    <form id="form1" runat="server">
        <!-- START CUSTOM TABS -->
        <div class="container">
            <div class="row">
                <h2 class="page-header">مدیریت اطلاعات پایه</h2>
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab_1" data-toggle="tab">وام ها</a></li>
                        <li><a href="#tab_2" data-toggle="tab">وثایق</a></li>

                    </ul>
                    <div class="tab-content">
                        <!-- وام ها-->
                        <div class="tab-pane active" id="tab_1">
                            <br />
                            <a href="#" id="btnAddNewLoan" class="btn btn-primary">وام جدید</a>
                            <br />
                            <br />
                            <table id="LoanTable" class="table table-striped table-bordered">
                                <thead>
                                    <tr class="table-heading">
                                        <th>#</th>
                                        <th>عنوان وام</th>
                                        <th>حذف</th>
                                        <th>ویرایش</th>
                                    </tr>
                                </thead>
                                <tbody id="Items">
                                </tbody>
                            </table>
                        </div>
                        <!-- /.tab-pane وثایق-->
                        <div class="tab-pane" id="tab_2">
                            <br />
                            <a href="#" id="btnAddNewCollat" class="btn btn-primary">وثیقه جدید</a>
                            <br />
                            <br />
                            <table id="CollatTable" class="table table-striped table-bordered">
                                <thead>
                                    <tr class="table-heading">
                                        <th>#</th>
                                        <th>عنوان</th>
                                        <th>حذف</th>
                                        <th>ویرایش</th>
                                    </tr>
                                </thead>
                                <tbody id="CollatItems">
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>

            <div class="modal fade" tabindex="-1" role="dialog" id="modalEditLoan">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">ویرایش</h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>عنوان  </label>
                                    <input type="text" name="BBD_TITLE" class="form-control" id="txtBBD_TITLE" />
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">بستن</button>
                            <button type="button" class="btn btn-primary" id="btnUpdateSaveChangeLoan">ذخیره تغییرات</button>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="modal fade" tabindex="-1" role="dialog" id="modalSaveLoan">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">وام جدید</h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>عنوان </label>
                                    <input type="text" name="BBD_TITLE" class="form-control" id="txt_BBD_TITLE" />
                                </div>

                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">بستن</button>
                            <button type="button" class="btn btn-primary" id="btnNewSaveChangeLoan">ذخیره تغییرات</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>

        </div>
    </form>
    <script src="../Scripts/baseData/base.js"></script>
</body>
</html>
