function menu_over(e){
           e.setAttribute("class","nav-item active");//<li class="nav-item active">
        }
function menu_out(e){
   e.setAttribute("class","nav-item");//<li class="nav-item">
}

$(document).ready(function (){
    $('#loginForm').submit(function(){
       //submit이 자동으로 되는 기능을 막기
       event.preventDefault();
       
       //id,pwd를 가져오기
       //docuent.getElementById("id").value
       var id = $('#id').val();
       var pwd = $('#pwd').val();
       console.log(id,pwd);
       
       //서버로 post전송(djax호출방식) 더미서버 이용
       $.post("/WebClass/login",
             {"id" : id,"pwd" : pwd },
             function(data){
                if(data.msg == "good"){
                	console.log("good");
                	location.href = "/WebClass/MyBlog/Home.jsp";
                }else{
                	console.log("nope");
                	var myModal= $('#myModal');
                    myModal.modal();
                    myModal.find('.modal-body').text('잘못된 정보 입니다.');
                    $('#pwd').val("");
                }
             });
    });
 });