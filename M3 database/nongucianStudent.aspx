<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nongucianStudent.aspx.cs" Inherits="M3_database.nongucianStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Student.css" rel="stylesheet" />
</head>
<body>
   <div class ="loginbox"> 
       <div class="navbar">  
       <img src="../img/guclogo.png"  alt =" Alternative Text" class ="logo"/>
       <ul>
           <li class="normal" ><a href="viewnonGucianProfile.aspx" >My Profile</a></li>
            <li class="normal"> <a href="viewNonThesis.aspx" >My Theses</a></li>
           <li class="normal" ><a href="courses.aspx"  >Courses</a></li>
         <li id="addfillLabel" runat="server" class="normal" ><a href="addfill.aspx"  >Add/fill Progress Report</a>
             <div id="hidden_area"  runat="server" class="hidden_area">student does not have any on going thesis</div>
           </li>
           <li id="addpubLabel" runat="server" class="normal"> <a href="addPub.aspx"  >add a publication</a>
            <div id="hidden_area2"  runat="server" class="hidden_area2">student does not have any on going thesis</div>
               </li>
           </ul>
           </div>

        <form runat="server">
            

            </form>
    </div>
</body>
</html>