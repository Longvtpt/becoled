<!doctype html>
<html xmlns:og="http://ogp.me/ns#" xmlns:fb="http://www.facebook.com/2008/fbml" xmlns:mixi="http://mixi-platform.com/ns#" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" dir="ltr">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>{if $title_for_layout!=""}{$title_for_layout}{else}{$TITLE}{/if}</title>
        <meta name="Keywords" content="{if $keyword_seo!=""}{$keyword_seo}{else}{$KEYWORD}{/if}" />
        <meta name="Description" content="{if $description_seo!=""}{$description_seo}{else}{$DESCRIPTION}{/if}" />
        <meta name="Author" content="{$smarty.const.DOMAINNAME}" />
        <meta name="Copyright" content="{$smarty.const.DOMAINNAME}" />
        <meta http-equiv="content-style-type" content="text/css" />
        <meta http-equiv="content-script-type" content="text/javascript" />
    </head>
        <style type="text/css">
html, body {
    margin: 0;
    padding: 0;
    border: 0;
    height: 100%;
    overflow: hidden;
}
object {
    width: 100%;
    height: 100%;
    border: 0
}
</style>
    <body>
           
            <object height="100%" width="100%" type="application/pdf" data="{$smarty.const.SITE_URL}{$dataCate['Category'].category_file}#toolbar=1&amp;navpanes=0&amp;scrollbar=1&amp;page=1&amp;view=FitH">

<p>It appears you don't have a PDF plugin for this browser. No biggie... you can <a href="/pdf/sample.pdf">click here to download the PDF file.</a></p>

</object>
    </body>
</html>