<div class="khung">
      	<div class="list-top">
      	  <p><a href="/">Home</a>/ <a href="/apply_visa.html"><span class="blue1">{$arrMenu2[1].title}</span></a>      	</p>
      	</div>
      {$arrMenu2[1].content} 
      	</div>
      
      
<script>
function _visa(){
            var purpose=$('#purpose').val();
            var typeofvisa=$('#typeofvisa').val();
            var dateofarrival=$('#dateofarrival').val();
            var dateofexit=$('#dateofexit').val();
            var arrivalairport=$('#arrivalairport').val();
            var processingtime=$('#processingtime').val();
            var fullname=$('#fullname').val();
            var passportnumber=$('#passportnumber').val();
            var dateofexpiry=$('#dateofexpiry').val();
            var dateofbirth=$('#dateofbirth').val();
            var gender=$('#gender').val();
            var nationality=$('#nationality').val();
             
             if(purpose.length<2){
                $('#tr_error').show();
                $('#txt_error').html('Purpose more than 2 - 100 characters!');
                $('#purpose').focus();
                return;
            }
            if(!_validateNum(typeofvisa)){
                $('#tr_error').show();
                $('#txt_error').html('Please input number for "Type of visa".');
                $('#typeofvisa').focus();
                return;
            }
            if(!_validateDateTime(dateofarrival)){
                $('#tr_error').show();
                $('#txt_error').html('Date of Arrival is invalid !');
                $('#dateofarrival').focus();
                return;
            }
            if(!_validateDateTime(dateofexit)){
                $('#tr_error').show();
                $('#txt_error').html('Date of Exit is invalid !');
                $('#dateofexit').focus();
                return;
            }
            if(arrivalairport!='Noibai'&&arrivalairport!='Tansonnhat'&&arrivalairport!='Danang Airport'){
                $('#tr_error').show();
                $('#txt_error').html('Please input Arrival Airport in Noibai / Tansonnhat/ Danang Airport');
                $('#arrivalairport').focus();
                return;
            }
            if(processingtime.length<2){
                $('#tr_error').show();
                $('#txt_error').html('Please input Processing Time');
                $('#processingtime').focus();
                return;
            }
            if(fullname.length<2){
                $('#tr_error').show();
                $('#txt_error').html('Please input Full Name');
                $('#fullname').focus();
                return;
            }
            if(passportnumber.length<3){
                $('#tr_error').show();
                $('#txt_error').html('Please input Pass port Number.');
                $('#passportnumber').focus();
                return;
            }
            if(!_validateDateTime(dateofexpiry)){
                $('#tr_error').show();
                $('#txt_error').html('Date of Expiry is invalid !');
                $('#dateofexpiry').focus();
                return;
            }
            if(!_validateDateTime(dateofbirth)){
                $('#tr_error').show();
                $('#txt_error').html('Date of Birth is invalid !');
                $('#dateofbirth').focus();
                return;
            }
            if(gender.length<1){
                $('#tr_error').show();
                $('#txt_error').html('Please input Gender.');
                $('#gender').focus();
                return;
            }
            if(nationality.length<1){
                $('#tr_error').show();
                $('#txt_error').html('Please input Nationatlity.');
                $('#gender').focus();
                return;
            }
            $('#tr_error').hide();
            $('#txt_error').html('');
            $('#frmbooking').submit();
        }
        </script>