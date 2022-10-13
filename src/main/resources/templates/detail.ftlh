[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Vizitkovník</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
<div class="detail">
    <div class="vizitka">
        [#if jedenUdaj.jmeno?has_content]
        <div class="jmeno">${jedenUdaj.jmeno}</div>
        [/#if]
        [#if jedenUdaj.firma?has_content]
        <div class="firma">${jedenUdaj.firma}</div>
        [/#if]
        <div class="udaje">
            [#if jedenUdaj.celaAdresa?has_content]
            <div class="adresa">
                <div>${jedenUdaj.ulice}</div>
                <div><span>${jedenUdaj.obecPsc}</span></div>
                [/#if]
            </div>
            <div class="kontakty">
                [#if jedenUdaj.email?has_content]
                <div><i class="las la-at"></i> <span>${jedenUdaj.email}</span></div>
                [/#if]
                [#if jedenUdaj.telefon?has_content]
                <div><i class="las la-phone-alt"></i> <span>${jedenUdaj.telefon}</span></div>
                [/#if]
                [#if jedenUdaj.web?has_content]
                <div><i class="las la-globe"></i> <span>${jedenUdaj.web}</span></div>
                [/#if]
            </div>
        </div>
    </div>

    <div class="mapa">
        <iframe style="border:none" src="https://frame.mapy.cz/?q=${jedenUdaj.celaAdresa}" width="100%" height="100%" frameborder="0"></iframe>
    </div>

</div>
</body>
</html>
