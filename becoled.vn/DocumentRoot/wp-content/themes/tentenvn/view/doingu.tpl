<div style="float: left;width: 100%">
    <div style="float: left;width: 98%;margin-top: 15px;">
        <div><span style="  font-size: 25px; font-weight: bold; color: #27c200; padding-left: 2%;">{$CName}</span></div>
    </div>
    <div style="  float: left;width: 96%;border-top: 1px solid #eee;margin-left: 2%;padding-top: 5px;padding-bottom: 10px; border-bottom: 1px solid #eee;">
        {section name=num loop=$arrNews}
            <div class="new_b" style="float: left;width: 100%;">
                <div class="new_t">{$arrNews[num].category_name} ({$arrNews[num].update_date} )</div>
                <div class="new_i">
                    <img style="width: 200px;height: 150px;" alt="{$arrNews[num].category_name}" src="{$smarty.const.SITE_URL}{if $arrNews[num].category_image!=""}{$arrNews[num].category_image}{else}images/no_news.jpg{/if}"/>
                </div>
                <div class="new_c">
                    <div style="float: left;width: 100%">{$arrNews[num].category_note}</div>
                    <a class="more">Xem thêm</a>
                </div>
            </div>
        {/section}
    </div>
</div>
<style>
    .new_i{
        border: 1px solid #CCCCCC;float: left;padding: 2px;
    }
    .new_t{
        color: #4EA4CF;float: left;font-size: 15px;font-weight: bold;text-decoration: none;margin: 0px 0 5px;width: 80%
    }
    .new_c .more{
          clear: both;
  color: #4EA4CF;
  float: left;
  font-size: 14px;
  text-decoration: underline;
    }
    .new_c{
        float: left;
        font-size: 14px;
        text-align: justify;
        width: 715px;
        margin-left: 20px;
        line-height: 22px;
    }
</style>
