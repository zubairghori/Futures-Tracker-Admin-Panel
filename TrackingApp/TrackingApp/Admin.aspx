<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="TrackingApp.Admin" %>

<!DOCTYPE html>

<html ng-app="Tracker">
<head runat="server">
    <title></title>
    <script src="Scripts/angular.js"></script>
    <script src="Scripts/jquery-1.9.1.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script>
            var postApp = angular.module("Tracker",[]);
            postApp.controller("TrackController", function () {
                $scope.user = {};
                var data = [
                    {
                        name: "waqar1",
                        email: "email",
                        password: "124",
                        cellNo: "03443434343",
                        address: "address",
                        vehicleNo: "vehilceNo",
                        vehicleModel: "vehicleModel",
                        timestamp: "24343434",
                        trackerUUID: "6trackerUUID"
                    }
                ];
                this.product = data;
                $scope.submitForm = function () {
                    $http({
                        method: "POST",
                        url: "",
                        data: $scope.user,
                        header: {'Content-Type': 'application/x-www-form-urlencoded'}
                    })
                    .success(function(data){
                        $scope.message = data.message;
                    });
                }

            });
    </script>
</head>
<body>
    <nav>

    </nav>
    <form id="form1" runat="server">
    <div ng-controller="TrackController as T">
        <div ng-repeat="product in T.product">
            <asp:TextBox ID="TextBox1" ng-model="product.name" runat="server" placeholder="Enter Your Name" ></asp:TextBox>
            <h1>Hello {{product.name}}</h1>
            <asp:TextBox ID="TextBox2" ng-model="Email" runat="server"></asp:TextBox>
            <h1>Hello {{product.Email}}</h1>
            <asp:TextBox ID="TextBox3" ng-model="Cell-NO" runat="server"></asp:TextBox>
            <h1>Hello {{product.Cell_NO}}</h1>
            <asp:TextBox ID="TextBox4" ng-model="Address" runat="server"></asp:TextBox>
            <h1>Hello {{product.Address}}</h1>
            <asp:TextBox ID="TextBox5" ng-model="Vehicle-NO" runat="server"></asp:TextBox>
            <h1>Hello {{product.Vehicle_No}}</h1>
            <asp:TextBox ID="TextBox6" ng-model="Vehicle-Address" runat="server"></asp:TextBox>
            <h1>Hello {{product.Model}}</h1>
            <asp:TextBox ID="TextBox7" ng-model="UUID" runat="server"></asp:TextBox>
            <h1>Hello {{product.UUID}}</h1>
        </div>        
    </div>
        <input type="submit" value="submit" />
    </form>
</body>
</html>
