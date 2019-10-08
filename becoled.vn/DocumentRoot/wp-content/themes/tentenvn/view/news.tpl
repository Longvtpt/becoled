<div class="block-tin-tuc">
    <div class="block-title">
        <span class="title"><{$CName}></span>
    </div>
    <div class="block-content">
        <{section name=num loop=$arrNews}>						
        <div class="item-post">
            <div class="item-photo">
                <a href="/<{$arrNews[num].link}>"><img src="<{if $arrNews[num].image_icon!=""}><{$URL_IMAGE}><{$arrNews[num].image_icon}><{else}>/img/noimage.jpg<{/if}>"></a>
            </div>
            <div class="item-detail">
                <a href="/<{$arrNews[num].link}>" class="item-name"><{$arrNews[num].title}></a>
                <div class="item-caption">
                    <{$arrNews[num].news_note}>
                </div>
                <a href="/<{$arrNews[num].link}>" class="more">Xem Tiếp</a>
            </div>
        </div>
        <{/section}>
    </div>
    <{if $page>1}>
    <ul class="pagination pull-right">
        <{for $numb=1;$numb<=$page;$numb++}>
        <li <{if $cur==$numb}>class="active"<{/if}>><a href="<{$link_cur}>?c=<{$numb}>"><{$numb}></a></li> 
        <{/for}>
    </ul>
    <{/if}>
</div>

<div class="block-comlum-tt">
					<div class="panel tin-moi">
			            <div class="panel-heading">
			            	<{$CName}>
			            </div>
			            <ul class="list-group">
						<{section name=num loop=$arrNews}>
			              	<li class="list-group-item">
			              		<div class="media">
			                  		<a class="pull-left" href="/<{$arrNews[num].link}>">
			                  			<img class="media-object" src="<{if $arrNews[num].image_icon!=""}><{$URL_IMAGE}><{$arrNews[num].image_icon}><{else}>/img/noimage.jpg<{/if}>" alt=""/>  
			                  		</a>
			                  		<div class="media-body">
			                    		<a class="media-heading" href="/<{$arrNews[num].link}>"><{$arrNews[num].title}></a>
			                    		<p><{$arrNews[num].news_note}></p>
			                    		<a class="xem-tiep" href="/<{$arrNews[num].link}>">Xem tiếp</a>
			                  		</div>
			                	</div>
			              	</li>
						<{/section}>
			            </ul>
			      	</div>
					 <{if $page>1}>
    <ul class="pagination pull-right">
        <{for $numb=1;$numb<=$page;$numb++}>
        <li <{if $cur==$numb}>class="active"<{/if}>><a href="<{$link_cur}>?c=<{$numb}>"><{$numb}></a></li> 
        <{/for}>
    </ul>
    <{/if}>
</div>


