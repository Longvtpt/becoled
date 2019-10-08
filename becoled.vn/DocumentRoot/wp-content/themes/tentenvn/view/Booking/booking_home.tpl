{if $flg==0}
    <table style="width: 880px">
        <tr style="background: #0066cc">
            <td>
                <div class="product_cate_left" style="float: left;width: 185px">
                    <img class="thumb-img" alt="{$dataCategory.category_name}" src="{$smarty.const.SITE_URL}{if $arrPHome.image_link!=""}{$arrPHome.image_link}{else}images/no_product.jpg{/if}"/>
                </div>
                <div class="product_cate_right" style="float: left;width: 685px">
                    <h3 style="margin-top: 30px;text-align: center;color: #fff;">{$arrPHome.product_name}</h3>
                    <span style="margin-top: 5px;text-align: center;color: #fff;float: left;width: 100%;font-size: 14px;">{$arrPHome.product_note}</span>
                </div>
        </tr>
        {if $arrPHome.category_drawing!=""}
            <tr>
                <td colspan="2" style="text-align: center"><img style="width: 600px;margin-left: 20px" src="{$smarty.const.SITE_URL}{$arrPHome.category_drawing}"/></td>
            </tr>
        {/if}
    </table>
    <form action="post" id="frm_or">
        <table class="t_detail"  cellpadding="1" cellspacing="1" style="width: 880px;">
            <tr>
                <td style="width: 580px;float: left">
                    <table style="padding: 0px;margin: 0px;width: 580px;">
                        <tr>
                            <td colspan="2" style="font-size: 14px;color: #fff;background: #00aaff;text-align: center;width: 560px;padding: 5px">Stock Information</td>
                        </tr>
                        <tr>
                            <td class="td1" style="width: 185px;background: #d0e8ff;font-size: 12px;color: #333;padding: 5px;">Product Category</td>
                            <td class="td1" style="background: #e6f4fb;font-size: 12px;color: #333;padding: 5px;">{$arrPHome.category_name}</td>
                        </tr>
                        <tr>
                            <td class="td1" style="width: 185px;background: #d0e8ff;font-size: 14px;color: #333;padding: 5px;">Product Name</td>
                            <td class="td1" style="background: #e6f4fb;font-size: 12px;color: #333;padding: 5px;">{$arrPHome.product_name}</td>
                        </tr>
                        <tr>
                            <td class="td1" style="width: 185px;background: #d0e8ff;font-size: 12px;color: #333;padding: 5px;">Product Stock Code</td>
                            <td class="td1" style="background: #e6f4fb;font-size: 12px;color: #333;padding: 5px;">{$arrPHome.product_code}</td>
                        </tr>
                        <tr>
                            <td class="td1" style="width: 185px;background: #d0e8ff;font-size: 12px;color: #333;padding: 5px;">Product Description</td>
                            <td class="td1" style="background: #e6f4fb;font-size: 12px;color: #333;padding: 5px;">{$arrPHome.product_note}</td>
                        </tr>
                        <tr>
                            <td colspan="2" style="font-size: 14px;color: #fff;background: #00aaff;text-align: center;width: 560px;padding: 5px">Price</td>
                        </tr>
                        <tr>
                            <td class="td1" style="width: 185px;background: #d0e8ff;font-size: 12px;color: #333;padding: 5px;">List Price</td>
                            <td class="td1" style="background: #e6f4fb;font-size: 12px;color: #333;padding: 5px;">{$arrPHome.product_price} {$smarty.const.MONEY}</td>
                        </tr>
                        <tr>
                            <td class="td1" style="width: 185px;background: #d0e8ff;font-size: 12px;color: #333;padding: 5px;">Special Sale Price</td>
                            <td class="td1" style="background: #e6f4fb;font-size: 12px;color: #333;padding: 5px;">{$arrPHome.product_price} {$smarty.const.MONEY}</td>
                        </tr>
                       
                    </table>
                </td>
                <td  style="width: 300px;">
                    <table>
                        <tr>
                            <td colspan="2"  style="font-size: 14px;color: #0066cc;background: #d0e8ff;text-align: center;padding: 5px"><div class="cartIcon"></div>{if $arrPHome.total_product>0}<a href="{$smarty.const.SITE_URL}Booking/step1/{$arrPHome.id}">Add to cart</a>{/if}</td>
                        </tr>
                        <tr>
                            <td class="td1" style="width: 125px;background: #00aaff;font-size: 12px;color: #fff;padding: 5px;">Product Information</td>
                                    <td class="td1" style="background: #00aaff;font-size: 12px;color: #fff;padding: 5px;text-align: center">
                                        Unit: <select>
                                            <option value="0">inches</option>
                                            <option value="1" selected="true">mm</option>
                                            <option value="2">cm</option>
                                             </select>
                                    </td>
                        </tr>
                        <tr>
                            <td class="td1" style="width: 125px;background: #d0e8ff;font-size: 12px;color: #333;padding: 5px;">D (H9)</td>
                            <td class="td1" style="background: #e6f4fb;font-size: 12px;color: #333;padding: 5px;">{$arrPHome.d_h91}</td>
                        </tr>
                        <tr>
                            <td class="td1" style="width: 125px;background: #d0e8ff;font-size: 12px;color: #333;padding: 5px;">H</td>
                            <td class="td1" style="background: #e6f4fb;font-size: 12px;color: #333;padding: 5px;">{$arrPHome.h}</td>
                        </tr>
                        <tr>
                            <td class="td1" style="width: 125px;background: #d0e8ff;font-size: 12px;color: #333;padding: 5px;">Material</td>
                            <td class="td1" style="background: #e6f4fb;font-size: 12px;color: #333;padding: 5px;">{$arrPHome.material}</td>
                        </tr>
                        <tr>
                            <td colspan="2" style="font-size: 14px;color: #fff;background: #00aaff;text-align: center;width: 260px;">{if $arrPHome.total_product>0}Stock Availability{else}Out of stock{/if}</td>
                        </tr>
                        <tr><td class="td1" colspan="2" style="background: #e6f4fb;font-size: 12px;color: #333;padding: 5px;">Please contact us for more information.</td>
                        </tr>
                        <tr>
                            <td colspan="2"  style="font-size: 14px;color: #0066cc;background: #d0e8ff;text-align: center;padding: 5px"><div class="cartIcon"></div>{if $arrPHome.total_product>0}<a href="{$smarty.const.SITE_URL}Booking/step1/{$arrPHome.id}">Add to cart</a>{/if}</td>
                        </tr>
                       
                    </table>
                </td>
            </tr>
        </table>

    </form>
    <style>
        .texta_or{
            width:590px;border: 1px solid #00aaff
        }
        .input_or{
            width:590px;
            border: 1px solid #00aaff;
            height:30px; 
            padding-left: 4px;
        }
        .button{
            padding: 5px 10px;
            background: orange;
            float: left;
            margin: 5px
        }
        a.button{
            color: #fff;
            text-decoration: none;
        }
    </style>
{else}
    Fail!!!
{/if}