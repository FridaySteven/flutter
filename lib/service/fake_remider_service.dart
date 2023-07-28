import 'dart:convert';

import '../models/home_model.dart';

class ReminderService {
  static List<Map<String, dynamic>> dummyData1 = [
    {
      "title": "City Under Siege (Chun sing gai bei)",
      "subTitle":
          "http://gnu.org/integer/pede/justo/lacinia/eget/tincidunt.xml?sed=adipiscing&magna=elit&at=proin&nunc=risus&commodo=praesent&placerat=lectus&praesent=vestibulum&blandit=quam",
      "isSetRemider": true
    },
    {
      "title": "Extreme Ops",
      "subTitle":
          "http://oaic.gov.au/varius/integer/ac/leo/pellentesque/ultrices.json?suspendisse=nisl&ornare=venenatis&consequat=lacinia&lectus=aenean&in=sit&est=amet&risus=justo&auctor=morbi&sed=ut&tristique=odio&in=cras&tempus=mi&sit=pede&amet=malesuada&sem=in&fusce=imperdiet&consequat=et&nulla=commodo&nisl=vulputate&nunc=justo&nisl=in&duis=blandit&bibendum=ultrices&felis=enim&sed=lorem&interdum=ipsum&venenatis=dolor&turpis=sit&enim=amet&blandit=consectetuer&mi=adipiscing&in=elit&porttitor=proin&pede=interdum&justo=mauris&eu=non&massa=ligula&donec=pellentesque&dapibus=ultrices&duis=phasellus&at=id&velit=sapien&eu=in&est=sapien&congue=iaculis&elementum=congue&in=vivamus&hac=metus&habitasse=arcu&platea=adipiscing&dictumst=molestie&morbi=hendrerit&vestibulum=at&velit=vulputate&id=vitae&pretium=nisl&iaculis=aenean&diam=lectus&erat=pellentesque&fermentum=eget&justo=nunc&nec=donec&condimentum=quis&neque=orci&sapien=eget&placerat=orci&ante=vehicula&nulla=condimentum&justo=curabitur&aliquam=in&quis=libero&turpis=ut&eget=massa&elit=volutpat&sodales=convallis&scelerisque=morbi&mauris=odio&sit=odio&amet=elementum&eros=eu&suspendisse=interdum&accumsan=eu&tortor=tincidunt&quis=in&turpis=leo&sed=maecenas&ante=pulvinar&vivamus=lobortis&tortor=est&duis=phasellus&mattis=sit&egestas=amet&metus=erat&aenean=nulla&fermentum=tempus&donec=vivamus&ut=in&mauris=felis",
      "isSetRemider": false
    },
    {
      "title": "Best Boy",
      "subTitle":
          "https://squidoo.com/habitasse/platea/dictumst.png?morbi=tempus&vestibulum=sit&velit=amet&id=sem&pretium=fusce&iaculis=consequat&diam=nulla&erat=nisl&fermentum=nunc&justo=nisl&nec=duis&condimentum=bibendum&neque=felis&sapien=sed&placerat=interdum&ante=venenatis&nulla=turpis&justo=enim&aliquam=blandit&quis=mi&turpis=in&eget=porttitor&elit=pede&sodales=justo&scelerisque=eu&mauris=massa&sit=donec&amet=dapibus&eros=duis&suspendisse=at&accumsan=velit&tortor=eu&quis=est&turpis=congue&sed=elementum&ante=in&vivamus=hac&tortor=habitasse&duis=platea&mattis=dictumst&egestas=morbi&metus=vestibulum&aenean=velit&fermentum=id&donec=pretium&ut=iaculis&mauris=diam&eget=erat&massa=fermentum&tempor=justo&convallis=nec&nulla=condimentum&neque=neque&libero=sapien&convallis=placerat&eget=ante&eleifend=nulla&luctus=justo&ultricies=aliquam",
      "isSetRemider": true
    },
    {
      "title": "Prayers for Bobby",
      "subTitle":
          "https://dailymotion.com/at.json?diam=diam&neque=neque&vestibulum=vestibulum&eget=eget",
      "isSetRemider": false
    },
    {
      "title": "Won Ton Ton: The Dog Who Saved Hollywood",
      "subTitle":
          "http://scribd.com/dolor/sit.jsp?in=lobortis&faucibus=est&orci=phasellus&luctus=sit&et=amet&ultrices=erat&posuere=nulla&cubilia=tempus&curae=vivamus&duis=in&faucibus=felis&accumsan=eu&odio=sapien&curabitur=cursus&convallis=vestibulum&duis=proin&consequat=eu&dui=mi&nec=nulla&nisi=ac&volutpat=enim&eleifend=in&donec=tempor&ut=turpis&dolor=nec&morbi=euismod&vel=scelerisque&lectus=quam&in=turpis&quam=adipiscing&fringilla=lorem&rhoncus=vitae&mauris=mattis&enim=nibh&leo=ligula&rhoncus=nec&sed=sem&vestibulum=duis&sit=aliquam&amet=convallis&cursus=nunc&id=proin&turpis=at&integer=turpis&aliquet=a&massa=pede&id=posuere&lobortis=nonummy&convallis=integer&tortor=non&risus=velit&dapibus=donec&augue=diam&vel=neque&accumsan=vestibulum&tellus=eget&nisi=vulputate&eu=ut&orci=ultrices&mauris=vel&lacinia=augue&sapien=vestibulum&quis=ante",
      "isSetRemider": false
    },
    {
      "title": "William S. Burroughs: A Man Within",
      "subTitle":
          "https://mail.ru/imperdiet/nullam/orci/pede/venenatis.xml?morbi=eu",
      "isSetRemider": false
    },
    {
      "title": "Home Alone 2: Lost in New York",
      "subTitle":
          "http://desdev.cn/ante/ipsum/primis.png?id=venenatis&luctus=non&nec=sodales&molestie=sed&sed=tincidunt&justo=eu&pellentesque=felis&viverra=fusce&pede=posuere&ac=felis&diam=sed&cras=lacus&pellentesque=morbi&volutpat=sem&dui=mauris&maecenas=laoreet&tristique=ut&est=rhoncus&et=aliquet&tempus=pulvinar&semper=sed",
      "isSetRemider": false
    },
    {
      "title": "It's a Gift",
      "subTitle":
          "http://earthlink.net/accumsan/tortor.xml?iaculis=ipsum&diam=primis&erat=in&fermentum=faucibus&justo=orci&nec=luctus&condimentum=et&neque=ultrices&sapien=posuere&placerat=cubilia&ante=curae&nulla=donec&justo=pharetra&aliquam=magna&quis=vestibulum&turpis=aliquet&eget=ultrices&elit=erat&sodales=tortor&scelerisque=sollicitudin&mauris=mi&sit=sit&amet=amet&eros=lobortis&suspendisse=sapien&accumsan=sapien&tortor=non&quis=mi&turpis=integer&sed=ac&ante=neque&vivamus=duis&tortor=bibendum&duis=morbi&mattis=non&egestas=quam&metus=nec&aenean=dui&fermentum=luctus&donec=rutrum&ut=nulla&mauris=tellus&eget=in&massa=sagittis&tempor=dui&convallis=vel&nulla=nisl&neque=duis&libero=ac&convallis=nibh&eget=fusce&eleifend=lacus&luctus=purus&ultricies=aliquet&eu=at&nibh=feugiat&quisque=non&id=pretium&justo=quis&sit=lectus&amet=suspendisse&sapien=potenti&dignissim=in&vestibulum=eleifend&vestibulum=quam&ante=a&ipsum=odio&primis=in&in=hac&faucibus=habitasse&orci=platea&luctus=dictumst&et=maecenas&ultrices=ut&posuere=massa&cubilia=quis&curae=augue&nulla=luctus&dapibus=tincidunt&dolor=nulla&vel=mollis&est=molestie&donec=lorem&odio=quisque&justo=ut&sollicitudin=erat&ut=curabitur&suscipit=gravida&a=nisi&feugiat=at&et=nibh",
      "isSetRemider": true
    },
    {
      "title": "Thy Womb (Sinapupunan)",
      "subTitle":
          "http://friendfeed.com/aliquet.xml?elit=odio&proin=consequat&risus=varius&praesent=integer&lectus=ac&vestibulum=leo&quam=pellentesque&sapien=ultrices&varius=mattis&ut=odio&blandit=donec&non=vitae&interdum=nisi&in=nam&ante=ultrices&vestibulum=libero&ante=non&ipsum=mattis&primis=pulvinar&in=nulla&faucibus=pede&orci=ullamcorper&luctus=augue&et=a&ultrices=suscipit&posuere=nulla&cubilia=elit&curae=ac&duis=nulla&faucibus=sed&accumsan=vel&odio=enim&curabitur=sit&convallis=amet&duis=nunc&consequat=viverra&dui=dapibus&nec=nulla&nisi=suscipit&volutpat=ligula&eleifend=in",
      "isSetRemider": false
    },
    {
      "title": "Spy in Black, The",
      "subTitle":
          "https://newsvine.com/pede/morbi/porttitor/lorem/id/ligula/suspendisse.aspx?quam=a&a=libero&odio=nam&in=dui&hac=proin&habitasse=leo&platea=odio&dictumst=porttitor&maecenas=id&ut=consequat&massa=in&quis=consequat&augue=ut&luctus=nulla&tincidunt=sed&nulla=accumsan&mollis=felis&molestie=ut&lorem=at&quisque=dolor&ut=quis&erat=odio&curabitur=consequat&gravida=varius&nisi=integer&at=ac&nibh=leo&in=pellentesque&hac=ultrices&habitasse=mattis&platea=odio",
      "isSetRemider": true
    },
    {
      "title": "Living Daylights, The",
      "subTitle":
          "https://businessinsider.com/integer/ac/leo/pellentesque/ultrices.jpg?magnis=sit&dis=amet&parturient=consectetuer&montes=adipiscing&nascetur=elit&ridiculus=proin&mus=interdum&etiam=mauris&vel=non&augue=ligula&vestibulum=pellentesque&rutrum=ultrices&rutrum=phasellus&neque=id&aenean=sapien&auctor=in&gravida=sapien&sem=iaculis&praesent=congue&id=vivamus&massa=metus&id=arcu&nisl=adipiscing&venenatis=molestie&lacinia=hendrerit&aenean=at&sit=vulputate&amet=vitae&justo=nisl&morbi=aenean&ut=lectus&odio=pellentesque&cras=eget&mi=nunc&pede=donec&malesuada=quis&in=orci&imperdiet=eget&et=orci&commodo=vehicula&vulputate=condimentum",
      "isSetRemider": true
    },
    {
      "title": "Young Aphrodites (Mikres Afrodites)",
      "subTitle":
          "http://dailymail.co.uk/quisque.html?orci=duis&eget=at&orci=velit&vehicula=eu&condimentum=est&curabitur=congue&in=elementum&libero=in&ut=hac&massa=habitasse&volutpat=platea&convallis=dictumst&morbi=morbi&odio=vestibulum&odio=velit&elementum=id&eu=pretium&interdum=iaculis&eu=diam&tincidunt=erat&in=fermentum&leo=justo&maecenas=nec&pulvinar=condimentum&lobortis=neque&est=sapien&phasellus=placerat&sit=ante&amet=nulla&erat=justo&nulla=aliquam&tempus=quis&vivamus=turpis&in=eget&felis=elit&eu=sodales&sapien=scelerisque&cursus=mauris&vestibulum=sit&proin=amet&eu=eros&mi=suspendisse&nulla=accumsan&ac=tortor&enim=quis&in=turpis&tempor=sed&turpis=ante&nec=vivamus&euismod=tortor&scelerisque=duis&quam=mattis&turpis=egestas&adipiscing=metus&lorem=aenean&vitae=fermentum&mattis=donec&nibh=ut&ligula=mauris&nec=eget&sem=massa&duis=tempor&aliquam=convallis&convallis=nulla&nunc=neque&proin=libero&at=convallis&turpis=eget&a=eleifend&pede=luctus&posuere=ultricies&nonummy=eu&integer=nibh&non=quisque&velit=id&donec=justo&diam=sit&neque=amet&vestibulum=sapien&eget=dignissim&vulputate=vestibulum&ut=vestibulum",
      "isSetRemider": true
    },
    {
      "title": "Craig's Wife",
      "subTitle":
          "https://google.ca/augue/vel/accumsan/tellus/nisi/eu.jpg?morbi=morbi&vel=non&lectus=lectus&in=aliquam&quam=sit&fringilla=amet&rhoncus=diam&mauris=in&enim=magna&leo=bibendum&rhoncus=imperdiet&sed=nullam&vestibulum=orci&sit=pede&amet=venenatis&cursus=non&id=sodales&turpis=sed&integer=tincidunt&aliquet=eu&massa=felis&id=fusce",
      "isSetRemider": true
    },
    {
      "title": "Welcome Home, Roscoe Jenkins",
      "subTitle":
          "https://infoseek.co.jp/lectus/pellentesque/eget/nunc/donec/quis/orci.json?orci=in&luctus=hac&et=habitasse&ultrices=platea&posuere=dictumst&cubilia=etiam&curae=faucibus&duis=cursus&faucibus=urna&accumsan=ut&odio=tellus&curabitur=nulla&convallis=ut&duis=erat&consequat=id&dui=mauris&nec=vulputate&nisi=elementum&volutpat=nullam&eleifend=varius&donec=nulla&ut=facilisi&dolor=cras",
      "isSetRemider": true
    },
    {
      "title": "Hawaii",
      "subTitle":
          "https://twitpic.com/nibh/in/hac/habitasse/platea/dictumst.jpg?donec=cum&ut=sociis&dolor=natoque&morbi=penatibus&vel=et&lectus=magnis&in=dis&quam=parturient&fringilla=montes&rhoncus=nascetur&mauris=ridiculus&enim=mus&leo=etiam&rhoncus=vel&sed=augue&vestibulum=vestibulum&sit=rutrum&amet=rutrum&cursus=neque&id=aenean&turpis=auctor&integer=gravida&aliquet=sem&massa=praesent&id=id&lobortis=massa&convallis=id&tortor=nisl&risus=venenatis&dapibus=lacinia&augue=aenean&vel=sit&accumsan=amet&tellus=justo&nisi=morbi&eu=ut&orci=odio&mauris=cras&lacinia=mi&sapien=pede&quis=malesuada&libero=in&nullam=imperdiet&sit=et&amet=commodo&turpis=vulputate&elementum=justo&ligula=in&vehicula=blandit&consequat=ultrices&morbi=enim&a=lorem&ipsum=ipsum&integer=dolor&a=sit&nibh=amet&in=consectetuer&quis=adipiscing&justo=elit&maecenas=proin&rhoncus=interdum&aliquam=mauris&lacus=non&morbi=ligula&quis=pellentesque&tortor=ultrices",
      "isSetRemider": false
    },
    {
      "title": "Headless Woman, The (Mujer sin cabeza, La)",
      "subTitle":
          "http://geocities.com/orci.jpg?dolor=amet&sit=diam&amet=in&consectetuer=magna&adipiscing=bibendum&elit=imperdiet&proin=nullam&interdum=orci&mauris=pede&non=venenatis&ligula=non&pellentesque=sodales&ultrices=sed&phasellus=tincidunt&id=eu&sapien=felis&in=fusce&sapien=posuere&iaculis=felis&congue=sed&vivamus=lacus&metus=morbi&arcu=sem&adipiscing=mauris&molestie=laoreet&hendrerit=ut&at=rhoncus&vulputate=aliquet",
      "isSetRemider": false
    },
    {
      "title": "Stick",
      "subTitle":
          "https://aboutads.info/diam/erat/fermentum/justo/nec.js?risus=nisl&dapibus=venenatis&augue=lacinia&vel=aenean",
      "isSetRemider": false
    },
    {
      "title": "Little Darlings",
      "subTitle":
          "https://pagesperso-orange.fr/odio.aspx?eget=nec&orci=nisi&vehicula=volutpat&condimentum=eleifend&curabitur=donec&in=ut&libero=dolor&ut=morbi&massa=vel&volutpat=lectus&convallis=in&morbi=quam&odio=fringilla&odio=rhoncus&elementum=mauris&eu=enim&interdum=leo&eu=rhoncus&tincidunt=sed&in=vestibulum&leo=sit&maecenas=amet&pulvinar=cursus&lobortis=id&est=turpis&phasellus=integer&sit=aliquet&amet=massa&erat=id&nulla=lobortis&tempus=convallis&vivamus=tortor&in=risus&felis=dapibus&eu=augue&sapien=vel&cursus=accumsan&vestibulum=tellus&proin=nisi&eu=eu&mi=orci&nulla=mauris&ac=lacinia&enim=sapien&in=quis&tempor=libero&turpis=nullam&nec=sit&euismod=amet&scelerisque=turpis&quam=elementum&turpis=ligula&adipiscing=vehicula&lorem=consequat&vitae=morbi&mattis=a&nibh=ipsum&ligula=integer&nec=a&sem=nibh&duis=in&aliquam=quis&convallis=justo&nunc=maecenas&proin=rhoncus&at=aliquam&turpis=lacus&a=morbi&pede=quis&posuere=tortor&nonummy=id&integer=nulla&non=ultrices&velit=aliquet&donec=maecenas&diam=leo&neque=odio&vestibulum=condimentum&eget=id&vulputate=luctus&ut=nec&ultrices=molestie&vel=sed&augue=justo",
      "isSetRemider": true
    },
    {
      "title": "Saving Otter 501",
      "subTitle":
          "http://reuters.com/potenti/in/eleifend/quam/a.html?nunc=vulputate&donec=nonummy&quis=maecenas&orci=tincidunt&eget=lacus&orci=at&vehicula=velit&condimentum=vivamus&curabitur=vel&in=nulla&libero=eget&ut=eros&massa=elementum&volutpat=pellentesque&convallis=quisque&morbi=porta&odio=volutpat&odio=erat&elementum=quisque&eu=erat&interdum=eros&eu=viverra&tincidunt=eget&in=congue&leo=eget&maecenas=semper&pulvinar=rutrum&lobortis=nulla&est=nunc&phasellus=purus&sit=phasellus&amet=in&erat=felis&nulla=donec&tempus=semper&vivamus=sapien&in=a&felis=libero&eu=nam&sapien=dui&cursus=proin&vestibulum=leo&proin=odio&eu=porttitor&mi=id&nulla=consequat&ac=in&enim=consequat&in=ut&tempor=nulla&turpis=sed&nec=accumsan&euismod=felis&scelerisque=ut&quam=at&turpis=dolor&adipiscing=quis&lorem=odio&vitae=consequat&mattis=varius&nibh=integer&ligula=ac&nec=leo&sem=pellentesque&duis=ultrices&aliquam=mattis&convallis=odio&nunc=donec&proin=vitae&at=nisi",
      "isSetRemider": false
    },
    {
      "title":
          "Swordsman II (Legend of the Swordsman, The) (Xiao ao jiang hu zhi: Dong Fang Bu Bai)",
      "subTitle":
          "http://howstuffworks.com/aliquet.json?quisque=mauris&erat=eget&eros=massa&viverra=tempor&eget=convallis&congue=nulla&eget=neque&semper=libero&rutrum=convallis&nulla=eget&nunc=eleifend&purus=luctus&phasellus=ultricies&in=eu&felis=nibh&donec=quisque&semper=id&sapien=justo&a=sit&libero=amet&nam=sapien&dui=dignissim&proin=vestibulum&leo=vestibulum&odio=ante&porttitor=ipsum&id=primis&consequat=in&in=faucibus&consequat=orci&ut=luctus&nulla=et&sed=ultrices&accumsan=posuere&felis=cubilia&ut=curae&at=nulla&dolor=dapibus&quis=dolor&odio=vel&consequat=est&varius=donec&integer=odio&ac=justo&leo=sollicitudin&pellentesque=ut&ultrices=suscipit&mattis=a&odio=feugiat&donec=et&vitae=eros&nisi=vestibulum&nam=ac&ultrices=est&libero=lacinia&non=nisi&mattis=venenatis&pulvinar=tristique&nulla=fusce&pede=congue&ullamcorper=diam&augue=id&a=ornare&suscipit=imperdiet&nulla=sapien&elit=urna&ac=pretium&nulla=nisl&sed=ut&vel=volutpat&enim=sapien&sit=arcu&amet=sed&nunc=augue&viverra=aliquam&dapibus=erat&nulla=volutpat&suscipit=in&ligula=congue&in=etiam&lacus=justo&curabitur=etiam&at=pretium&ipsum=iaculis&ac=justo&tellus=in&semper=hac&interdum=habitasse&mauris=platea&ullamcorper=dictumst&purus=etiam&sit=faucibus&amet=cursus&nulla=urna&quisque=ut&arcu=tellus&libero=nulla",
      "isSetRemider": false
    },
    {
      "title": "Wipers Times, The",
      "subTitle":
          "https://google.nl/vestibulum/ac/est/lacinia/nisi/venenatis/tristique.jpg?elit=etiam&ac=pretium&nulla=iaculis&sed=justo&vel=in&enim=hac&sit=habitasse&amet=platea&nunc=dictumst&viverra=etiam&dapibus=faucibus&nulla=cursus&suscipit=urna&ligula=ut&in=tellus&lacus=nulla&curabitur=ut&at=erat&ipsum=id&ac=mauris&tellus=vulputate&semper=elementum&interdum=nullam&mauris=varius&ullamcorper=nulla&purus=facilisi&sit=cras&amet=non&nulla=velit&quisque=nec&arcu=nisi&libero=vulputate&rutrum=nonummy&ac=maecenas&lobortis=tincidunt&vel=lacus&dapibus=at&at=velit&diam=vivamus&nam=vel&tristique=nulla&tortor=eget&eu=eros",
      "isSetRemider": true
    },
    {
      "title": "Nemesis 2: Nebula",
      "subTitle":
          "http://godaddy.com/platea/dictumst/maecenas/ut/massa/quis.aspx?sapien=molestie&non=sed&mi=justo&integer=pellentesque&ac=viverra&neque=pede&duis=ac&bibendum=diam&morbi=cras&non=pellentesque&quam=volutpat&nec=dui&dui=maecenas&luctus=tristique&rutrum=est&nulla=et&tellus=tempus&in=semper&sagittis=est&dui=quam&vel=pharetra&nisl=magna&duis=ac&ac=consequat&nibh=metus&fusce=sapien&lacus=ut&purus=nunc&aliquet=vestibulum&at=ante&feugiat=ipsum&non=primis&pretium=in&quis=faucibus&lectus=orci&suspendisse=luctus&potenti=et&in=ultrices&eleifend=posuere&quam=cubilia&a=curae&odio=mauris&in=viverra&hac=diam&habitasse=vitae&platea=quam&dictumst=suspendisse&maecenas=potenti&ut=nullam&massa=porttitor&quis=lacus&augue=at&luctus=turpis&tincidunt=donec&nulla=posuere&mollis=metus&molestie=vitae&lorem=ipsum&quisque=aliquam&ut=non&erat=mauris&curabitur=morbi&gravida=non&nisi=lectus&at=aliquam&nibh=sit&in=amet&hac=diam&habitasse=in&platea=magna&dictumst=bibendum&aliquam=imperdiet",
      "isSetRemider": true
    },
    {
      "title": "Counselor, The",
      "subTitle":
          "https://wp.com/quis.html?integer=arcu&non=adipiscing&velit=molestie&donec=hendrerit&diam=at&neque=vulputate&vestibulum=vitae&eget=nisl&vulputate=aenean&ut=lectus&ultrices=pellentesque&vel=eget&augue=nunc&vestibulum=donec&ante=quis&ipsum=orci&primis=eget&in=orci&faucibus=vehicula&orci=condimentum&luctus=curabitur&et=in&ultrices=libero&posuere=ut&cubilia=massa&curae=volutpat&donec=convallis&pharetra=morbi&magna=odio&vestibulum=odio&aliquet=elementum&ultrices=eu&erat=interdum&tortor=eu&sollicitudin=tincidunt&mi=in&sit=leo&amet=maecenas&lobortis=pulvinar&sapien=lobortis&sapien=est&non=phasellus&mi=sit&integer=amet&ac=erat&neque=nulla&duis=tempus&bibendum=vivamus&morbi=in&non=felis&quam=eu&nec=sapien&dui=cursus",
      "isSetRemider": false
    },
    {
      "title": "Boy with Green Hair, The",
      "subTitle":
          "https://trellian.com/lectus/vestibulum/quam.jpg?dictumst=velit&etiam=eu&faucibus=est&cursus=congue&urna=elementum&ut=in&tellus=hac&nulla=habitasse&ut=platea&erat=dictumst&id=morbi&mauris=vestibulum&vulputate=velit&elementum=id&nullam=pretium&varius=iaculis&nulla=diam&facilisi=erat&cras=fermentum&non=justo&velit=nec&nec=condimentum&nisi=neque&vulputate=sapien&nonummy=placerat&maecenas=ante&tincidunt=nulla&lacus=justo&at=aliquam&velit=quis&vivamus=turpis&vel=eget&nulla=elit&eget=sodales&eros=scelerisque&elementum=mauris&pellentesque=sit&quisque=amet&porta=eros&volutpat=suspendisse&erat=accumsan&quisque=tortor&erat=quis&eros=turpis&viverra=sed&eget=ante&congue=vivamus&eget=tortor&semper=duis&rutrum=mattis&nulla=egestas&nunc=metus&purus=aenean&phasellus=fermentum&in=donec&felis=ut&donec=mauris&semper=eget&sapien=massa&a=tempor&libero=convallis&nam=nulla&dui=neque&proin=libero&leo=convallis&odio=eget&porttitor=eleifend&id=luctus&consequat=ultricies&in=eu&consequat=nibh&ut=quisque&nulla=id&sed=justo&accumsan=sit&felis=amet&ut=sapien&at=dignissim&dolor=vestibulum&quis=vestibulum&odio=ante&consequat=ipsum&varius=primis&integer=in&ac=faucibus&leo=orci&pellentesque=luctus&ultrices=et&mattis=ultrices&odio=posuere&donec=cubilia&vitae=curae&nisi=nulla&nam=dapibus",
      "isSetRemider": false
    },
    {
      "title": "Last Play at Shea, The",
      "subTitle":
          "http://fc2.com/nonummy/maecenas/tincidunt/lacus/at/velit/vivamus.js?pellentesque=vivamus&viverra=metus&pede=arcu&ac=adipiscing&diam=molestie&cras=hendrerit&pellentesque=at&volutpat=vulputate&dui=vitae&maecenas=nisl&tristique=aenean&est=lectus&et=pellentesque&tempus=eget&semper=nunc&est=donec&quam=quis&pharetra=orci&magna=eget&ac=orci&consequat=vehicula&metus=condimentum&sapien=curabitur&ut=in&nunc=libero&vestibulum=ut&ante=massa",
      "isSetRemider": false
    },
    {
      "title": "Waterloo",
      "subTitle":
          "https://theglobeandmail.com/vestibulum.aspx?dictumst=scelerisque&etiam=mauris&faucibus=sit&cursus=amet&urna=eros&ut=suspendisse&tellus=accumsan&nulla=tortor&ut=quis&erat=turpis&id=sed&mauris=ante&vulputate=vivamus&elementum=tortor&nullam=duis&varius=mattis&nulla=egestas&facilisi=metus&cras=aenean&non=fermentum&velit=donec&nec=ut&nisi=mauris&vulputate=eget&nonummy=massa&maecenas=tempor&tincidunt=convallis&lacus=nulla&at=neque&velit=libero&vivamus=convallis&vel=eget&nulla=eleifend&eget=luctus&eros=ultricies&elementum=eu&pellentesque=nibh&quisque=quisque&porta=id&volutpat=justo&erat=sit&quisque=amet&erat=sapien&eros=dignissim&viverra=vestibulum&eget=vestibulum&congue=ante&eget=ipsum&semper=primis&rutrum=in&nulla=faucibus&nunc=orci&purus=luctus&phasellus=et&in=ultrices&felis=posuere&donec=cubilia&semper=curae&sapien=nulla&a=dapibus&libero=dolor&nam=vel&dui=est&proin=donec&leo=odio&odio=justo&porttitor=sollicitudin&id=ut&consequat=suscipit&in=a&consequat=feugiat&ut=et&nulla=eros&sed=vestibulum&accumsan=ac&felis=est&ut=lacinia&at=nisi&dolor=venenatis&quis=tristique&odio=fusce",
      "isSetRemider": true
    },
    {
      "title": "Offspring ",
      "subTitle":
          "http://ed.gov/bibendum/morbi/non/quam/nec.png?curabitur=vestibulum&gravida=rutrum&nisi=rutrum&at=neque&nibh=aenean&in=auctor&hac=gravida&habitasse=sem&platea=praesent&dictumst=id&aliquam=massa&augue=id&quam=nisl&sollicitudin=venenatis&vitae=lacinia&consectetuer=aenean&eget=sit&rutrum=amet&at=justo&lorem=morbi&integer=ut&tincidunt=odio&ante=cras&vel=mi&ipsum=pede&praesent=malesuada&blandit=in&lacinia=imperdiet&erat=et&vestibulum=commodo",
      "isSetRemider": true
    },
    {
      "title": "3 Ninjas Knuckle Up",
      "subTitle":
          "https://symantec.com/in/faucibus/orci/luctus.aspx?libero=tortor&ut=risus&massa=dapibus&volutpat=augue&convallis=vel&morbi=accumsan&odio=tellus&odio=nisi&elementum=eu&eu=orci&interdum=mauris&eu=lacinia&tincidunt=sapien&in=quis&leo=libero&maecenas=nullam&pulvinar=sit&lobortis=amet&est=turpis&phasellus=elementum&sit=ligula&amet=vehicula&erat=consequat&nulla=morbi&tempus=a&vivamus=ipsum&in=integer&felis=a&eu=nibh&sapien=in&cursus=quis&vestibulum=justo&proin=maecenas&eu=rhoncus&mi=aliquam",
      "isSetRemider": true
    },
    {
      "title": "Moolaadé",
      "subTitle":
          "http://yellowbook.com/quam/fringilla/rhoncus.json?dis=augue&parturient=aliquam&montes=erat&nascetur=volutpat&ridiculus=in&mus=congue&vivamus=etiam&vestibulum=justo&sagittis=etiam&sapien=pretium&cum=iaculis&sociis=justo&natoque=in&penatibus=hac&et=habitasse&magnis=platea&dis=dictumst&parturient=etiam&montes=faucibus&nascetur=cursus&ridiculus=urna&mus=ut&etiam=tellus&vel=nulla&augue=ut&vestibulum=erat&rutrum=id&rutrum=mauris&neque=vulputate&aenean=elementum&auctor=nullam&gravida=varius&sem=nulla&praesent=facilisi&id=cras&massa=non&id=velit&nisl=nec&venenatis=nisi&lacinia=vulputate&aenean=nonummy&sit=maecenas&amet=tincidunt&justo=lacus&morbi=at&ut=velit&odio=vivamus&cras=vel&mi=nulla&pede=eget&malesuada=eros&in=elementum&imperdiet=pellentesque&et=quisque&commodo=porta&vulputate=volutpat&justo=erat&in=quisque&blandit=erat&ultrices=eros&enim=viverra&lorem=eget&ipsum=congue&dolor=eget&sit=semper&amet=rutrum&consectetuer=nulla&adipiscing=nunc&elit=purus&proin=phasellus&interdum=in&mauris=felis&non=donec&ligula=semper&pellentesque=sapien&ultrices=a&phasellus=libero&id=nam&sapien=dui&in=proin&sapien=leo&iaculis=odio&congue=porttitor&vivamus=id&metus=consequat&arcu=in&adipiscing=consequat&molestie=ut&hendrerit=nulla&at=sed&vulputate=accumsan&vitae=felis&nisl=ut",
      "isSetRemider": false
    },
    {
      "title": "One Man Against the Organization",
      "subTitle":
          "https://blogspot.com/fermentum/justo.xml?justo=nibh&aliquam=ligula&quis=nec&turpis=sem&eget=duis&elit=aliquam&sodales=convallis&scelerisque=nunc&mauris=proin&sit=at&amet=turpis&eros=a&suspendisse=pede&accumsan=posuere&tortor=nonummy&quis=integer&turpis=non&sed=velit&ante=donec&vivamus=diam",
      "isSetRemider": true
    },
    {
      "title": "10 Years",
      "subTitle":
          "http://joomla.org/varius/ut/blandit/non/interdum.aspx?justo=mi&lacinia=integer&eget=ac&tincidunt=neque&eget=duis&tempus=bibendum&vel=morbi&pede=non&morbi=quam&porttitor=nec&lorem=dui&id=luctus&ligula=rutrum&suspendisse=nulla&ornare=tellus&consequat=in&lectus=sagittis&in=dui&est=vel&risus=nisl&auctor=duis&sed=ac&tristique=nibh&in=fusce&tempus=lacus&sit=purus&amet=aliquet&sem=at&fusce=feugiat&consequat=non&nulla=pretium&nisl=quis&nunc=lectus&nisl=suspendisse&duis=potenti&bibendum=in&felis=eleifend&sed=quam&interdum=a",
      "isSetRemider": true
    },
    {
      "title": "Letter for the King, The (Brief voor de koning, De)",
      "subTitle":
          "https://netlog.com/phasellus/sit.html?pede=posuere&libero=cubilia&quis=curae&orci=duis&nullam=faucibus&molestie=accumsan&nibh=odio&in=curabitur&lectus=convallis&pellentesque=duis&at=consequat&nulla=dui&suspendisse=nec&potenti=nisi&cras=volutpat&in=eleifend&purus=donec&eu=ut&magna=dolor&vulputate=morbi&luctus=vel&cum=lectus&sociis=in&natoque=quam&penatibus=fringilla&et=rhoncus&magnis=mauris&dis=enim&parturient=leo&montes=rhoncus&nascetur=sed&ridiculus=vestibulum&mus=sit&vivamus=amet&vestibulum=cursus&sagittis=id&sapien=turpis&cum=integer&sociis=aliquet&natoque=massa&penatibus=id&et=lobortis&magnis=convallis&dis=tortor&parturient=risus&montes=dapibus&nascetur=augue&ridiculus=vel&mus=accumsan&etiam=tellus&vel=nisi&augue=eu&vestibulum=orci&rutrum=mauris&rutrum=lacinia&neque=sapien&aenean=quis&auctor=libero&gravida=nullam&sem=sit&praesent=amet&id=turpis&massa=elementum&id=ligula&nisl=vehicula&venenatis=consequat&lacinia=morbi&aenean=a&sit=ipsum&amet=integer&justo=a&morbi=nibh&ut=in&odio=quis&cras=justo&mi=maecenas&pede=rhoncus&malesuada=aliquam&in=lacus&imperdiet=morbi&et=quis&commodo=tortor&vulputate=id&justo=nulla&in=ultrices&blandit=aliquet&ultrices=maecenas&enim=leo&lorem=odio&ipsum=condimentum&dolor=id&sit=luctus&amet=nec&consectetuer=molestie&adipiscing=sed&elit=justo&proin=pellentesque&interdum=viverra&mauris=pede",
      "isSetRemider": true
    },
    {
      "title": "Under the Domim Tree (Etz Hadomim Tafus)",
      "subTitle":
          "http://wikia.com/nulla/suspendisse.png?sit=sit&amet=amet&eros=consectetuer&suspendisse=adipiscing&accumsan=elit&tortor=proin&quis=risus&turpis=praesent&sed=lectus&ante=vestibulum&vivamus=quam&tortor=sapien&duis=varius&mattis=ut&egestas=blandit&metus=non&aenean=interdum&fermentum=in&donec=ante&ut=vestibulum&mauris=ante&eget=ipsum&massa=primis&tempor=in&convallis=faucibus&nulla=orci&neque=luctus&libero=et&convallis=ultrices&eget=posuere&eleifend=cubilia&luctus=curae&ultricies=duis&eu=faucibus&nibh=accumsan&quisque=odio&id=curabitur&justo=convallis&sit=duis&amet=consequat&sapien=dui&dignissim=nec&vestibulum=nisi&vestibulum=volutpat&ante=eleifend&ipsum=donec&primis=ut&in=dolor&faucibus=morbi&orci=vel&luctus=lectus&et=in&ultrices=quam&posuere=fringilla&cubilia=rhoncus&curae=mauris&nulla=enim&dapibus=leo&dolor=rhoncus&vel=sed&est=vestibulum&donec=sit&odio=amet&justo=cursus&sollicitudin=id&ut=turpis&suscipit=integer&a=aliquet&feugiat=massa&et=id",
      "isSetRemider": true
    },
    {
      "title": "Wish You Were Here",
      "subTitle":
          "http://github.io/duis.aspx?velit=nunc&id=commodo&pretium=placerat&iaculis=praesent&diam=blandit&erat=nam&fermentum=nulla&justo=integer&nec=pede&condimentum=justo&neque=lacinia&sapien=eget&placerat=tincidunt&ante=eget&nulla=tempus&justo=vel&aliquam=pede&quis=morbi&turpis=porttitor&eget=lorem&elit=id&sodales=ligula&scelerisque=suspendisse&mauris=ornare&sit=consequat&amet=lectus&eros=in&suspendisse=est&accumsan=risus&tortor=auctor&quis=sed&turpis=tristique&sed=in&ante=tempus&vivamus=sit&tortor=amet&duis=sem&mattis=fusce&egestas=consequat&metus=nulla&aenean=nisl",
      "isSetRemider": false
    },
    {
      "title": "Camille Claudel",
      "subTitle":
          "http://pen.io/ante/ipsum.aspx?proin=integer&leo=a&odio=nibh&porttitor=in&id=quis&consequat=justo&in=maecenas&consequat=rhoncus&ut=aliquam&nulla=lacus&sed=morbi&accumsan=quis&felis=tortor&ut=id&at=nulla&dolor=ultrices&quis=aliquet&odio=maecenas&consequat=leo&varius=odio&integer=condimentum&ac=id&leo=luctus&pellentesque=nec&ultrices=molestie&mattis=sed",
      "isSetRemider": false
    },
    {
      "title": "Man in the Moon, The",
      "subTitle":
          "http://biglobe.ne.jp/vivamus.aspx?ac=vel&est=augue&lacinia=vestibulum&nisi=rutrum&venenatis=rutrum&tristique=neque&fusce=aenean&congue=auctor&diam=gravida&id=sem&ornare=praesent&imperdiet=id&sapien=massa&urna=id&pretium=nisl&nisl=venenatis&ut=lacinia&volutpat=aenean&sapien=sit&arcu=amet&sed=justo&augue=morbi&aliquam=ut&erat=odio&volutpat=cras&in=mi&congue=pede&etiam=malesuada&justo=in&etiam=imperdiet&pretium=et&iaculis=commodo&justo=vulputate&in=justo&hac=in&habitasse=blandit&platea=ultrices&dictumst=enim&etiam=lorem&faucibus=ipsum&cursus=dolor&urna=sit&ut=amet&tellus=consectetuer&nulla=adipiscing&ut=elit&erat=proin&id=interdum&mauris=mauris&vulputate=non&elementum=ligula&nullam=pellentesque&varius=ultrices&nulla=phasellus&facilisi=id&cras=sapien&non=in&velit=sapien&nec=iaculis&nisi=congue&vulputate=vivamus&nonummy=metus&maecenas=arcu&tincidunt=adipiscing&lacus=molestie&at=hendrerit&velit=at&vivamus=vulputate&vel=vitae&nulla=nisl&eget=aenean&eros=lectus&elementum=pellentesque&pellentesque=eget&quisque=nunc&porta=donec&volutpat=quis&erat=orci&quisque=eget&erat=orci&eros=vehicula&viverra=condimentum&eget=curabitur&congue=in&eget=libero&semper=ut&rutrum=massa&nulla=volutpat&nunc=convallis&purus=morbi&phasellus=odio&in=odio&felis=elementum&donec=eu&semper=interdum&sapien=eu",
      "isSetRemider": false
    },
    {
      "title": "Satan Bug, The",
      "subTitle":
          "https://linkedin.com/suscipit.json?semper=sit&est=amet&quam=cursus&pharetra=id&magna=turpis&ac=integer&consequat=aliquet&metus=massa&sapien=id&ut=lobortis&nunc=convallis&vestibulum=tortor&ante=risus&ipsum=dapibus&primis=augue&in=vel&faucibus=accumsan&orci=tellus&luctus=nisi&et=eu&ultrices=orci&posuere=mauris&cubilia=lacinia&curae=sapien&mauris=quis&viverra=libero&diam=nullam&vitae=sit&quam=amet&suspendisse=turpis&potenti=elementum&nullam=ligula&porttitor=vehicula&lacus=consequat&at=morbi&turpis=a&donec=ipsum&posuere=integer&metus=a&vitae=nibh&ipsum=in&aliquam=quis&non=justo&mauris=maecenas&morbi=rhoncus&non=aliquam&lectus=lacus&aliquam=morbi&sit=quis&amet=tortor&diam=id&in=nulla&magna=ultrices&bibendum=aliquet&imperdiet=maecenas&nullam=leo&orci=odio&pede=condimentum&venenatis=id&non=luctus&sodales=nec&sed=molestie&tincidunt=sed&eu=justo&felis=pellentesque&fusce=viverra&posuere=pede&felis=ac&sed=diam&lacus=cras&morbi=pellentesque&sem=volutpat",
      "isSetRemider": false
    },
    {
      "title": "Love Ghost (Shibito no koiwazura)",
      "subTitle":
          "http://addthis.com/fringilla/rhoncus.xml?accumsan=id&tellus=ligula&nisi=suspendisse&eu=ornare",
      "isSetRemider": true
    },
    {
      "title": "Valley Of Flowers",
      "subTitle":
          "https://shop-pro.jp/est/lacinia/nisi/venenatis/tristique.png?convallis=cum&tortor=sociis&risus=natoque&dapibus=penatibus&augue=et&vel=magnis&accumsan=dis&tellus=parturient&nisi=montes&eu=nascetur&orci=ridiculus&mauris=mus",
      "isSetRemider": true
    },
    {
      "title": "Countdown to Looking Glass",
      "subTitle":
          "http://tinyurl.com/etiam/pretium/iaculis/justo/in/hac/habitasse.aspx?tristique=pede&in=posuere&tempus=nonummy&sit=integer&amet=non&sem=velit&fusce=donec&consequat=diam&nulla=neque&nisl=vestibulum&nunc=eget&nisl=vulputate&duis=ut&bibendum=ultrices&felis=vel&sed=augue&interdum=vestibulum&venenatis=ante&turpis=ipsum&enim=primis&blandit=in&mi=faucibus&in=orci&porttitor=luctus&pede=et&justo=ultrices&eu=posuere&massa=cubilia&donec=curae&dapibus=donec&duis=pharetra&at=magna&velit=vestibulum&eu=aliquet&est=ultrices&congue=erat&elementum=tortor&in=sollicitudin&hac=mi&habitasse=sit&platea=amet&dictumst=lobortis&morbi=sapien&vestibulum=sapien&velit=non&id=mi&pretium=integer&iaculis=ac&diam=neque&erat=duis&fermentum=bibendum&justo=morbi&nec=non&condimentum=quam&neque=nec&sapien=dui&placerat=luctus&ante=rutrum&nulla=nulla&justo=tellus&aliquam=in&quis=sagittis&turpis=dui&eget=vel&elit=nisl&sodales=duis&scelerisque=ac&mauris=nibh&sit=fusce&amet=lacus&eros=purus&suspendisse=aliquet&accumsan=at&tortor=feugiat&quis=non&turpis=pretium&sed=quis&ante=lectus&vivamus=suspendisse&tortor=potenti&duis=in&mattis=eleifend&egestas=quam&metus=a&aenean=odio&fermentum=in&donec=hac&ut=habitasse&mauris=platea",
      "isSetRemider": false
    },
    {
      "title": "California Conquest",
      "subTitle":
          "http://vimeo.com/convallis/eget/eleifend/luctus.xml?cum=sed&sociis=magna&natoque=at&penatibus=nunc&et=commodo&magnis=placerat&dis=praesent&parturient=blandit&montes=nam&nascetur=nulla&ridiculus=integer&mus=pede&etiam=justo&vel=lacinia&augue=eget&vestibulum=tincidunt&rutrum=eget&rutrum=tempus&neque=vel&aenean=pede&auctor=morbi&gravida=porttitor&sem=lorem&praesent=id&id=ligula&massa=suspendisse&id=ornare&nisl=consequat&venenatis=lectus&lacinia=in&aenean=est&sit=risus&amet=auctor&justo=sed&morbi=tristique&ut=in&odio=tempus&cras=sit&mi=amet",
      "isSetRemider": true
    },
    {
      "title": "Victory (a.k.a. Escape to Victory)",
      "subTitle":
          "http://sakura.ne.jp/ac.aspx?odio=vulputate&consequat=justo&varius=in&integer=blandit&ac=ultrices&leo=enim&pellentesque=lorem&ultrices=ipsum&mattis=dolor&odio=sit&donec=amet&vitae=consectetuer&nisi=adipiscing&nam=elit&ultrices=proin&libero=interdum&non=mauris&mattis=non&pulvinar=ligula&nulla=pellentesque&pede=ultrices&ullamcorper=phasellus&augue=id&a=sapien&suscipit=in&nulla=sapien&elit=iaculis&ac=congue&nulla=vivamus&sed=metus&vel=arcu&enim=adipiscing&sit=molestie&amet=hendrerit&nunc=at&viverra=vulputate&dapibus=vitae&nulla=nisl&suscipit=aenean&ligula=lectus&in=pellentesque&lacus=eget&curabitur=nunc&at=donec&ipsum=quis&ac=orci&tellus=eget&semper=orci",
      "isSetRemider": true
    },
    {
      "title": "Battle in Heaven (Batalla en el cielo)",
      "subTitle":
          "https://usda.gov/vestibulum.xml?viverra=quis&pede=lectus&ac=suspendisse&diam=potenti",
      "isSetRemider": true
    },
    {
      "title": "Boy Meets Boy",
      "subTitle":
          "https://cpanel.net/lorem/ipsum/dolor/sit.js?congue=lobortis&etiam=ligula&justo=sit&etiam=amet&pretium=eleifend&iaculis=pede&justo=libero&in=quis&hac=orci&habitasse=nullam&platea=molestie&dictumst=nibh&etiam=in&faucibus=lectus&cursus=pellentesque&urna=at&ut=nulla&tellus=suspendisse&nulla=potenti&ut=cras&erat=in&id=purus&mauris=eu&vulputate=magna&elementum=vulputate&nullam=luctus&varius=cum&nulla=sociis&facilisi=natoque&cras=penatibus&non=et&velit=magnis&nec=dis&nisi=parturient&vulputate=montes&nonummy=nascetur&maecenas=ridiculus&tincidunt=mus&lacus=vivamus&at=vestibulum&velit=sagittis&vivamus=sapien&vel=cum&nulla=sociis&eget=natoque&eros=penatibus&elementum=et&pellentesque=magnis&quisque=dis&porta=parturient&volutpat=montes&erat=nascetur&quisque=ridiculus&erat=mus&eros=etiam&viverra=vel&eget=augue&congue=vestibulum",
      "isSetRemider": false
    },
    {
      "title": "Fred Claus",
      "subTitle":
          "https://weather.com/consequat/nulla.js?penatibus=erat&et=quisque&magnis=erat&dis=eros&parturient=viverra&montes=eget&nascetur=congue&ridiculus=eget&mus=semper&vivamus=rutrum&vestibulum=nulla&sagittis=nunc&sapien=purus&cum=phasellus&sociis=in&natoque=felis&penatibus=donec&et=semper&magnis=sapien&dis=a&parturient=libero&montes=nam&nascetur=dui&ridiculus=proin&mus=leo&etiam=odio&vel=porttitor&augue=id&vestibulum=consequat&rutrum=in&rutrum=consequat&neque=ut&aenean=nulla&auctor=sed&gravida=accumsan&sem=felis&praesent=ut&id=at&massa=dolor&id=quis&nisl=odio&venenatis=consequat&lacinia=varius&aenean=integer&sit=ac&amet=leo&justo=pellentesque&morbi=ultrices&ut=mattis&odio=odio&cras=donec&mi=vitae&pede=nisi&malesuada=nam&in=ultrices&imperdiet=libero&et=non&commodo=mattis&vulputate=pulvinar&justo=nulla&in=pede&blandit=ullamcorper&ultrices=augue&enim=a&lorem=suscipit&ipsum=nulla&dolor=elit&sit=ac&amet=nulla&consectetuer=sed&adipiscing=vel&elit=enim&proin=sit&interdum=amet&mauris=nunc&non=viverra&ligula=dapibus&pellentesque=nulla&ultrices=suscipit&phasellus=ligula&id=in&sapien=lacus&in=curabitur&sapien=at&iaculis=ipsum&congue=ac&vivamus=tellus&metus=semper&arcu=interdum&adipiscing=mauris&molestie=ullamcorper&hendrerit=purus&at=sit&vulputate=amet&vitae=nulla&nisl=quisque&aenean=arcu&lectus=libero&pellentesque=rutrum",
      "isSetRemider": true
    },
    {
      "title": "Street with No Name, The",
      "subTitle":
          "http://hhs.gov/aliquam/quis/turpis/eget.js?blandit=quis&ultrices=tortor&enim=id&lorem=nulla&ipsum=ultrices&dolor=aliquet&sit=maecenas&amet=leo&consectetuer=odio&adipiscing=condimentum&elit=id&proin=luctus&interdum=nec&mauris=molestie&non=sed&ligula=justo&pellentesque=pellentesque&ultrices=viverra&phasellus=pede&id=ac&sapien=diam&in=cras&sapien=pellentesque&iaculis=volutpat&congue=dui&vivamus=maecenas&metus=tristique&arcu=est&adipiscing=et&molestie=tempus&hendrerit=semper&at=est&vulputate=quam&vitae=pharetra&nisl=magna&aenean=ac&lectus=consequat&pellentesque=metus&eget=sapien&nunc=ut&donec=nunc&quis=vestibulum&orci=ante&eget=ipsum&orci=primis&vehicula=in&condimentum=faucibus&curabitur=orci&in=luctus&libero=et&ut=ultrices&massa=posuere&volutpat=cubilia&convallis=curae&morbi=mauris&odio=viverra&odio=diam&elementum=vitae&eu=quam&interdum=suspendisse&eu=potenti&tincidunt=nullam&in=porttitor&leo=lacus&maecenas=at&pulvinar=turpis&lobortis=donec&est=posuere&phasellus=metus&sit=vitae&amet=ipsum&erat=aliquam&nulla=non&tempus=mauris&vivamus=morbi&in=non&felis=lectus&eu=aliquam&sapien=sit",
      "isSetRemider": true
    },
    {
      "title": "White Hunter, Black Heart",
      "subTitle":
          "http://t-online.de/sed/accumsan/felis/ut.js?molestie=vel&sed=nulla&justo=eget&pellentesque=eros&viverra=elementum&pede=pellentesque&ac=quisque&diam=porta&cras=volutpat&pellentesque=erat&volutpat=quisque&dui=erat&maecenas=eros&tristique=viverra&est=eget&et=congue&tempus=eget&semper=semper&est=rutrum&quam=nulla&pharetra=nunc&magna=purus&ac=phasellus&consequat=in&metus=felis&sapien=donec&ut=semper&nunc=sapien&vestibulum=a&ante=libero&ipsum=nam&primis=dui&in=proin&faucibus=leo&orci=odio",
      "isSetRemider": true
    },
    {
      "title": "Princess Diaries, The",
      "subTitle":
          "https://state.tx.us/nec/euismod.html?urna=ipsum&pretium=primis&nisl=in&ut=faucibus&volutpat=orci&sapien=luctus&arcu=et&sed=ultrices&augue=posuere&aliquam=cubilia&erat=curae&volutpat=duis&in=faucibus&congue=accumsan&etiam=odio&justo=curabitur&etiam=convallis&pretium=duis&iaculis=consequat&justo=dui&in=nec&hac=nisi&habitasse=volutpat&platea=eleifend&dictumst=donec&etiam=ut&faucibus=dolor&cursus=morbi",
      "isSetRemider": false
    },
    {
      "title": "Sex of Angels, The (El sexo de los ángeles)",
      "subTitle":
          "http://house.gov/dui.html?odio=mauris&justo=vulputate&sollicitudin=elementum&ut=nullam&suscipit=varius&a=nulla&feugiat=facilisi&et=cras&eros=non&vestibulum=velit&ac=nec&est=nisi&lacinia=vulputate&nisi=nonummy&venenatis=maecenas&tristique=tincidunt&fusce=lacus&congue=at&diam=velit&id=vivamus",
      "isSetRemider": false
    },
    {
      "title": "Café Metropole",
      "subTitle":
          "http://seattletimes.com/velit/eu/est/congue/elementum.html?nulla=sodales&ac=sed&enim=tincidunt&in=eu&tempor=felis&turpis=fusce&nec=posuere&euismod=felis&scelerisque=sed&quam=lacus&turpis=morbi&adipiscing=sem&lorem=mauris&vitae=laoreet&mattis=ut&nibh=rhoncus&ligula=aliquet&nec=pulvinar&sem=sed&duis=nisl&aliquam=nunc&convallis=rhoncus&nunc=dui&proin=vel&at=sem&turpis=sed&a=sagittis&pede=nam&posuere=congue&nonummy=risus&integer=semper&non=porta&velit=volutpat&donec=quam&diam=pede&neque=lobortis&vestibulum=ligula&eget=sit&vulputate=amet&ut=eleifend",
      "isSetRemider": true
    }
  ];

  static late List<Home> reminderDataService;

  void getReminderDataService() {
    reminderDataService = dummyData1
        .map((reminder) {
          return Home.fromJson(reminder);
        })
        .toList()
        .where((element) => element.isSetRemider == true)
        .toList();
  }

  void setReminderDataService(bool isSetRemider, Home home) {
    int index = reminderDataService
        .indexWhere((element) => element.title == home.title);

    if (index > -1) {
      reminderDataService[index].isSetRemider = !isSetRemider;
      print('SZS: =========== ${jsonEncode(reminderDataService[index])}');
    } else {
      home.isSetRemider = !isSetRemider;
      reminderDataService.add(home);
    }
  }
}
