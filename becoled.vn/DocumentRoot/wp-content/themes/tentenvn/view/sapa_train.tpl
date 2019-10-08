<div class="khung">
      	<div class="list-top"><a href="#">Home</a>/ <a href="#"><span class="blue1"> {$arrMenu2[2].title}   </span></a></div>
        {$arrMenu2[2].content}
       	<div class="link-xh"><a title="Facebook" href="http://www.facebook.com/share.php?u={$smarty.const.SITE_URL}sapa_train_ticket.html"><img src="images/facebook.gif" width="18" height="18" /></a></div>
          <div class="link-xh"><a title="Twitter" href="http://twitter.com/share?url={$smarty.const.SITE_URL}sapa_train_ticket.html"><img src="images/twitter.gif" width="18" height="18" /></a></div>
          <div class="link-xh"><a title="Google Bookmarks" href="https://www.google.com/bookmarks/mark?op=edit&amp;bkmk={$smarty.const.SITE_URL}sapa_train_ticket.html"><img src="images/google.gif" width="18" height="18" /></a></div>
          <div class="link-xh"><a onclick="bookingTrain();" style="cursor: pointer"><img src="images/booking.jpg" width="91" height="18" /></a></div>
      </div>
         <script>
         function bookingTrain(){
            var myRadio1 = $('input[name=sapatrain]');
            var value1 = parseInt(myRadio1.filter(':checked').val());
            if(value1>108&&value1<120){
                window.location.href=site_url+"BookingTour?tour="+value1;
            }
        }
         </script>