<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
   rel="stylesheet">
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<style>
.mypage {
   background-color: #E6E6E6;
   position: relative;
   height: auto;
   padding: 30px;
   text-align: center;
   border-radius: 1em;
   width: 800px;
   margin: auto;
}

.mybook1 {
   border: solid;
   border-width: 1px;
   border-color: #3B3939;
   width: 450px;
   height: auto;
   width: 800px;
   margin-top: 50px;
   margin-left: auto;
   margin-right: auto;
   border-radius: 0.5em;
}

.mybook2 {
   border: solid;
   border-width: 1px;
   border-color: #3B3939;
   width: 450px;
   height: auto;
   margin-top: 40px;
   width: 800px;
   margin-left: auto;
   margin-right: auto;
   border-radius: 0.5em;
}

table {
   margin-left: auto;
   margin-right: auto;
}

#btn {
   margin: auto;
}
</style>
</head>
   
<body>
<div class="mypage" style="margin-top: 50px;">

<span style="padding-left: 550px;">
   <a href="delmem?lid=${sessionScope.sessionID}">
   <button type="button"
         class="btn btn-danger">ȸ��Ż��</button></a></span>
<span style="padding-left: 550px;">
   <a href="${pageContext.request.contextPath}/member/upform"><button type="button"
         class="btn btn-dark">ȸ������ ����</button></a></span>
   <div >   
 <button id="btn" type="button" 
      style="position: relative; margin-right: 450px; border: hidden;">
      <img id="imgx" src="${pageContext.request.contextPath}/resources/imgpwd/${v.limg }"
         style="width: 150px; height: 150px;">
   </button>
<!-- ���� ���� ���� -->
      <form style="width:300px;" method="post"
         action="${pageContext.request.contextPath}/member/photoup"
         enctype="multipart/form-data">
        
         <input   type="submit" value="����" id="btn1" > <input
            type="hidden" name="mgrno" value=1> <input type="hidden"
            name="lid" value="${v.lid }"> <input type="hidden"
            name="lpwd" value="${v.lpwd }"> <input type="hidden"
            name="lphone" value="${v.lphone }"> <input type="hidden"
            name="laddr" value="${v.laddr }"> <input type="hidden"
            name="lemail" value="${v.lemail }">


                  <div>
               <input  type="file" name="mfile" id="mfile">
            </div>


      </form>
      </div>   
<!-- ���� ���� ���� ��-->
   
   <div style=" width:300px; position:relative; left:400px; bottom: 100px;">
      <p style="font-size: 25px; font-weight: bold; padding-top: 15px;">${v.lid}����
         �����������Դϴ�.</p>
      <p style="font-weight: bold;">ȸ�� ���̵� : ${v.lid }</p>
      <p style="font-weight: bold;">ȸ�� �̸� : ${v.lname }</p>
      <p style="font-weight: bold;">ȸ�� ����ó : ${v.lphone }</p>
      <p style="font-weight: bold;">ȸ�� ���� : ${v.lgender }</p>
      <p style="font-weight: bold;">ȸ�� �ּ� : ${v.laddr }</p>
      <p style="font-weight: bold;">ȸ�� ���� : ${v.lemail }</p>
   </div>
</div>



   <table class="table table-hover"
      style="margin-top: 50px; width: 800px; text-align: center; table-layout: fixed;">
      <tr>
         <th colspan="6" style="text-align: center;">��ȭ ���� ����</th>
      </tr>

      <tr>
         <td>��ȣ</td>
         <td>�̹���</td>
         <td>��ȭ ����</td>
         <td>���� ��¥</td>
         <td>��ȭ ����</td>
         <td>��ȭ �ð�</td>
      </tr>
      
      <c:forEach var="e" items="${muvo}" varStatus="status">
      <c:forEach var="f" items="${e.moviebuy}"  >
      <tr>
         <td>${status.count }</td>
         

         <td><img src="${pageContext.request.contextPath}/resources/img/${vo.mimg }.jpg"
            style="width: 100px; height: 100px;"></td>
         <td>${e.mname }</td>
         <td>${e.mstartday }</td>
         
           <td>${f.mbdate }</td>
         <td>${f.mstarttime }</td>
      </tr>
         </c:forEach>
         </c:forEach>
   </table>

   <table class="table table-hover"
      style="margin-top: 30px; width: 800px; text-align: center; table-layout: fixed">
      <tr>
         <th colspan="6" style="text-align: center;">���� ���� ����</th>
      </tr>

      <tr>
         <td>��ȣ</td>
         <td>�̹���</td>
         <td>��ǰ �̸�</td>
         <td>���� ��¥</td>
         <td>���� ����</td>
         <td>���� �ݾ�</td>
      </tr>
      <!-- ���� ���ų��� foreach�� ���� -->
      <c:forEach var="e" items="${snvo }" varStatus="status">
      <c:forEach var="f" items="${e.buy }" >
      <tr>
         <td>${status.count }</td>
         <td><img src="resources/img/${e.popimg }"
            style="width: 100px; height: 100px;"></td>
         <td>${e.popname }</td>
         <td>���ų�¥</td>
         <td>���� ����</td>
         <td>���� �ݾ�</td>
      </tr>
      </c:forEach>
      </c:forEach>
      <!-- ���� ���ų��� foreach�� �� -->
   </table>
   
   <table class="table table-hover"
      style="margin-top: 30px; width: 800px; text-align: center; table-layout: fixed">
      <tr>
         <th colspan="4" style="text-align: center;">Q&A ���� ����</th>
      </tr>

      <tr>
         <td>��ȣ</td>
         <td>���� ����</td>
         <td>���� ����</td>
         <td>���� ��¥</td>
      </tr>
      
      <c:forEach var="e" items="${lovo }" varStatus="status">
      <c:forEach var="f" items="${e.qnaboard }">
      <tr>
         <td>${status.count }</td>
         <td>${f.subject }</td>
         <td>${f.content }</td>
         <td>${f.mdate }</td>
      </tr>
      </c:forEach>
      </c:forEach>
      
   </table>
   <table>
   		<tr>
               <td>
                  <p>��ȭ ��ȣ �帣</p>
                  <p id="pie"></p>
               </td>
   		</tr>
   </table>
   </body>
   <script>
   $(function() {
      $('#mfile').hide();
      
      $('#btn').click(function() {
         $('#mfile').click();   
      })
      
      
      
   });
   
   function readURL(input) {
         // input type= "file"�� �ּҸ� �����´�.
         if (input.files && input.files[0]) {
            // �ڹٽ�ũ��Ʈ I/O
            var reader = new FileReader();
            // ������
            reader.onload = function(e) {
               $('#imgx').attr('src', e.target.result); // setter �ְڴ�.
            }
            reader.readAsDataURL(input.files[0]);
         }
      }
      //jQuery����
      $(function() {
         //jQuery ������
         //������ڿ��� ��ȭ�� �����ϴ� �̺�Ʈ: change()
         $('#mfile').change(function() {
            if ($(this).val().length > 0) {
               readURL(this);
            } else {
               console.log("�̹��� ����.");
            }
         });
      });
      var uid = '<%=(String)session.getAttribute("sessionID")%>';
      console.log("uid====>"+uid);
      $(function() {   
      $.ajax({
          url : "../likemtype?lid="+uid,
          success : function(jsondata) {
			console.log(jsondata)
             var chart = c3.generate({
                bindto : '#pie',
                size: {
                    width: 800,
                    height: 600
                },
                
                data : {
                   json : [jsondata[1]],
                   keys : {
                      value : Object.keys(jsondata[1]),
                   },
                   type : 'donut',
                   
                   colors: {
                	   '���': '#FF9AA2',
                	   '���': '#FFD3B5',
                	   '�θǽ�': '#FDDBC7',
                	   '�̽��͸�': '#D6EFFF',
                	   '��Ÿ��': '#A0C4FF',
                	   '��ť���͸�': '#B5EAD7',
                	   '������': '#E2F0CB',
                	   'SF': '#FFF1C1',
                	   '�ڹ̵�': '#FFB7B2',
                	   '�ִϸ��̼�': '#F9D5E5',
                	   '�׼�': '#CAE4DB',
                	   '����': '#EDB183',
                	   '����': '#C5DCA0',
                	   '���͸�': '#B2B2B2',
                	   '����': '#E4F9F5',
                	   '����': '#FFE5D9',
                	   '�����潺': '#B7B7A4',
                	   '����': '#F6E7C1',
                	   '����': '#FFC2E2'
                	   }

            

                },
                donut : {
                    title : uid+'���� ��ȣ��ȭ�帣',
                    
                },
             });
             //----------------------
          },
          error : function(e) {
             console.log("����")
          }
       });
      });
   </script>
</html>