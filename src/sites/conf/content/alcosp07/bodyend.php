<?


$PAGEBODY .= <<<PAGEBODY
<table width=100% border=1 bordercolor=$menucolor cellpadding=3 cellspacing=0>
 <tr valign=top>
  <td  bgcolor=#eeeeee width=180>



PAGEBODY;

$mas = array ();

$mas[]=array('hyp' => 'news', 'addr' => "news.html", 'title' =>"News");
$mas[]=array('hyp' => 'general', 'addr' => "general.html", 'title' =>"General information");
$mas[]=array('hyp' => 'dates', 'addr' => "dates.html", 'title' =>"Important dates");
$mas[]=array('hyp' => 'finalsubmission', 'addr' => "finalsubmission.html", 'title' =>"Final paper submission");
$mas[]=array('hyp' => 'registration', 'addr' => "registration.html", 'title' =>"Registration");
$mas[]=array('hyp' => 'hotel', 'addr' => "hotel.html", 'title' =>"Hotel reservation");
$mas[]=array('hyp' => 'visa', 'addr' => "visa.html", 'title' =>"Visa information");

$mas[]=array('hyp' => 'travinf', 'addr' => "travinf.html", 'title' => "Travel Information");

$mas[]=array('hyp' => 'schedule', 'addr' => "shedule07.pdf", 'title' =>"Conference schedule (in PDF)");
$mas[]=array('hyp' => 'final', 'addr' => "ALCOSPtechn_progr.pdf", 'title' =>"Preliminary Program (in PDF)");

$mas[]=array('hyp' => 'pleninv', 'addr' => "pleninv.html", 'title' =>"Plenary and invited sessions");

$mas[]=array('hyp' => 'sponsorship', 'addr' => "sponsorship.html", 'title' =>"Invitation&nbsp;to&nbsp;sponsorship");

$mas[]=array('hyp' => 'ifacpolicy', 'addr' => "ifacpolicy.html", 'title' =>"New&nbsp;IFAC&nbsp;publication&nbsp;policy");
$mas[]=array('hyp' => 'agency', 'addr' => "agency.html", 'title' =>"&quot;Monomax&quot;&nbsp;Travel&nbsp;agency");


foreach($mas as $elm) {
  if($Hyp==$elm[hyp])
    $PAGEBODY .=  "&#149;&nbsp;<b>$elm[title]</b><br>";
  else
    $PAGEBODY .=  "&#149;&nbsp;<a href=\"$elm[addr]\">$elm[title]</a><br>";
}

$PAGEBODY .= <<<PAGEBODY
<br>
&rarr; <a target=_blank href="http://coms.physcon.ru">Submission site</a>
<br>
<!-- br>
&rarr; <a target=_blank href="http://$photosite/gallery.html?gal=physcon05">PhysCon 2005 Photogallery</a -->
<br>
&rarr; <a target=_blank href="http://$photosite/venicenorth/">Saint Petersburg - The Venice of the North</a>
<br>
&rarr; <a target=_blank href="http://$photosite/anichkov/">Conference venue - Imperial Anichkov Palace</a>
<br>
<!-- br>
&rarr; <a target=_blank href="http://$confsite/2003/">PhysCon 2003 Site</a>
<br>
&rarr; <a target=_blank href="http://$photosite/gallery.html?gal=physcon03">PhysCon 2003 Photogallery</a -->

<!-- br>
Official Travel Agent:
<br>
<a target=_blank href="http://www.monomax.org">Monomax Ltd</a -->

PAGEBODY;


$PAGEBODY .= <<<PAGEBODY


<table border=0>
<tr align=middle>
<td>

<hr>

<b>ADDRESS OF<br>ORGANIZING COMMITTEE</b><br>
<a href="http://www.ipme.ru/ipme/labs/ccs/" target=_blank>Prof. A.Fradkov</a><br>
The Institute for<!-- br --> Problems of<br>Mechanical Engineering<br>
61 Bolshoy ave. V.O. <br>199178, St.Petersburg,<br>
RUSSIA<br>
Ph: +7(812)321-4766,<br>Fax: +7(812)321-4771<BR>E-mail:
<a href="mailto:alcosp07@physcon.ru">alcosp07@physcon.ru</a> 

<br>
<br>
<br>

</tr>
</td>
</table>

</td>
  <td valign=top rowspan=2>
    <table height=100% width=100% border=0>
      <td valign=top>
<CENTER><H1>$bodytitle</H1></CENTER>       
$bodytext
      </td>
    </table>
  </td>
 </tr>
 
</table>
PAGEBODY;

include_once("finish.php");

?>
