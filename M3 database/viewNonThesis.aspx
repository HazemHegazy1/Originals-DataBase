<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewNonThesis.aspx.cs" Inherits="M3_database.NonviewThesis" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="Student.css" rel="stylesheet" />
</head>
<body>
   <div class ="loginbox"> 
        
       <div class="navbar">  
       <img src="img/guclogo.png"  alt =" Alternative Text" class ="logo"/>
       <ul>
           <li class="normal" ><a href="viewNonGucianProfile.aspx" >My Profile</a></li>
           <li class="meeow" > My Theses</li>
           <li class="normal" ><a href="courses.aspx"  >Courses</a></li>
          <li id="addfillLabel" runat="server" class="normal" ><a href="addfillNon.aspx"  >Add/fill Progress Report</a>
             <div id="hidden_area"  runat="server" class="hidden_area">student does not have any on going thesis</div>
           </li>
           <li id="addpubLabel" runat="server" class="normal" ><a href="addPubNon.aspx"  >add a publication</a>
            <div id="hidden_area2"  runat="server" class="hidden_area2">student does not have any on going thesis</div></li>
         
       </ul>
                 
           </div>
       
        <form runat="server">
            <asp:GridView ID="GridView2" cssclass="gridt" runat="server" AutoGenerateColumns="False" Width="1269px" DataKeyNames="serialNumber" DataSourceID="SqlDataSource2" Height="70px" >
                <Columns>
                    <asp:BoundField DataField="serialNumber" HeaderText="serialNumber" InsertVisible="False" ReadOnly="True" SortExpression="serialNumber" />
                    <asp:BoundField DataField="field" HeaderText="field" SortExpression="field" />
                    <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:BoundField DataField="startDate" HeaderText="startDate" SortExpression="startDate" />
                    <asp:BoundField DataField="endDate" HeaderText="endDate" SortExpression="endDate" />
                    <asp:BoundField DataField="defenseDate" HeaderText="defenseDate" SortExpression="defenseDate" />
                    <asp:BoundField DataField="years" HeaderText="years" ReadOnly="True" SortExpression="years" />
                    <asp:BoundField DataField="grade" HeaderText="grade" SortExpression="grade" />
                    <asp:BoundField DataField="payment_id" HeaderText="payment_id" SortExpression="payment_id" />
                    <asp:BoundField DataField="noOfExtensions" HeaderText="noOfExtensions" SortExpression="noOfExtensions" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone3 %>" SelectCommand="listStudentThesis" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter Name="studentID" DefaultValue="" SessionField="user" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

            </form>
    </div>
</body>
</html>