<?


$PAGEBODY .= <<<PAGEBODY
<table width=100% border=1 bordercolor=$menucolor cellpadding=3 cellspacing=0>
 <tr valign=top>
  <td  bgcolor=#eeeeee width=180>



PAGEBODY;

$mas = array ();
////$mas[]=array(hyp => 0, addr => "index.html", title =>"News archive");
$mas[]=array(hyp => 'news', addr => "news.html", title =>"News");

//$mas[]=array(hyp => 'scope', addr => "index.html", title =>"Scope of the Conference");
//$mas[]=array(hyp => 'callforpap', addr => "callforpap.html", title =>"Call for Papers");
$mas[]=array(hyp => 'callforpart', addr => "callforpart.html", title =>"Call for Participation");
$mas[]=array(hyp => 'dates', addr => "dates.html", title =>"Important dates");
//$mas[]=array(hyp => 'submissions', addr => "submissions.html", title =>"Submissions");
$mas[]=array(hyp => 'committee', addr => "committee.html", title =>"Steering committee");
$mas[]=array(hyp => 'minisymposia', addr => "minisymposia.html", title =>"Mini-Symposia");
//$mas[]=array(hyp => 'submabstracts', addr => "submabstracts.html", title =>"Submission of abstracts");
//$mas[]=array(hyp => 'submabstracts', addr => "submabstracts.html", title =>"Paper submission");

$mas[]=array(hyp => prelim, addr => "ENOC08PrelimTechnProgr.pdf", title =>"Preliminary Program (in PDF)");

$mas[]=array(hyp => 'prizes', addr => "prizes.html", title =>"Young scientist prizes");

$mas[]=array(hyp => 'finalsubmission', addr => "finalsubmission.html", title =>"Final paper submission");
$mas[]=array(hyp => 'registration', addr => "registration.html", title =>"Registration");
$mas[]=array(hyp => 'hotel', addr => "hotel.html", title =>"Hotel accommodation");
$mas[]=array(hyp => 'visa', addr => "visa.html", title =>"Visa support");
$mas[]=array(hyp => 'agency', addr => "agency.html", title =>"Conference Service Agency");


//$mas[]=array(hyp => callfp, addr => "callfp.html", title =>"Call for Participation");
//$mas[]=array(hyp => prelim, addr => "prelim.html", title =>"Preliminary Program");
//$mas[]=array(hyp => final, addr => "docs/FinProgPhysCon05.pdf", title =>"Final Program (in PDF)");

//$mas[]=array(hyp => callforpap, addr => "callforpap.html", title =>"Call for Papers");
//$mas[]=array(hyp => submission, addr => "submission.html", title =>"Paper submission");


////$mas[]=array(hyp => 2, addr => "finprog.html", title => "Final Program");
//$mas[]=array(hyp => reghot, addr => "regnhot.html", title => "Registration and Hotels");
//$mas[]=array(hyp => vizinf, addr => "vizinf.html", title => "Visa Information");
//$mas[]=array(hyp => autinf, addr => "autinf.html", title => "Information for Authors");
//$mas[]=array(hyp => travinf, addr => "travinf.html", title => "Travel Information ");
//$mas[]=array(hyp => soprog, addr => "soprog.html", title => "Social Program");
////$mas[]=array(hyp => ccnrev, addr => "ccnrev.html", title => "Conference Committees and Reviewers");
////$mas[]=array(hyp => ccnrev, addr => "ccnrev.html", title => "Conference Committees");
//$mas[]=array(hyp => ccnrev, addr => "ccnrev.html", title => "Conference Committees and Reviewers");
////$mas[]=array(hyp => soprog, addr => "soprog.html", title => "Social Program");


foreach($mas as $elm) {
  if($Hyp==$elm[hyp])
    $PAGEBODY .=  "&#149; <a href=\"$elm[addr]\"><b>$elm[title]</b></a><br>";
//    $PAGEBODY .=  "&#149; <b>$elm[title]</b><br>";
  else
    $PAGEBODY .=  "&#149; <a href=\"$elm[addr]\">$elm[title]</a><br>";
}

$PAGEBODY .= <<<PAGEBODY
<br>
&rarr; <a target=_blank href="http://coms.physcon.ru">Submission site</a>
<br>

<br>
<center>
Partner Event:
<br>
<a target=_blank href="http://apm-conf.spb.ru/" title="The International Summer School &quot;Advanced Problems in Mechanics&quot; July 6&mdash;10, 2008, St. Petersburg, Russia">APM 2008, July 6&mdash;10, 2008, St.Petersburg, Russia</a>
</center>
<!-- br -->

<!-- br>
&rarr; <a target=_blank href="http://$photosite/gallery.html?gal=physcon05">PhysCon 2005 Photogallery</a -->

<br>
&rarr; <a target=_blank href="http://$photosite/venicenorth/">Saint Petersburg&nbsp;&mdash; The&nbsp;Venice of the&nbsp;North</a>

<!-- br>
&rarr; <a target=_blank href="http://$photosite/anichkov/">Conference venue&nbsp;&mdash; Imperial Anichkov&nbsp;Palace</a -->

<br>
<br>
&rarr; <a target=_blank href="http://www.enoc2005.tue.nl/home.php">Past&nbsp;conference: <nobr>ENOC-2005 Aug. 7&mdash;12, 2005</nobr></a>
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
<a href="http://www.ipme.ru/" target=_blank>The Institute for Problems of<br>Mechanical Engineering</a><br>
61 Bolshoy ave. V.O. <br>199178, St.Petersburg,<br>
RUSSIA<br>
Ph: +7(812)321-4766,<br>Fax: +7(812)321-4771<BR>E-mail:
<a href="mailto:enoc08@physcon.ru">enoc08@physcon.ru</a> 

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
$bodytext
      </td>
    </table>
  </td>
 </tr>
 
</table>
PAGEBODY;

include_once("finish.php");

?>