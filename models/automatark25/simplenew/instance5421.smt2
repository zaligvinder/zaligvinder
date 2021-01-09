(declare-const X String)
; for.*www\x2Eeblocs\x2Ecom\d\x2Fiis2ebs\.asp\d\<title\>Actual\x2Fpagead\x2Fads\?search2\.ad\.shopnav\.com\x2F9899\x2Fsearch\x2Fresults\.php
(assert (str.in.re X (re.++ (str.to.re "for") (re.* re.allchar) (str.to.re "www.eblocs.com\x1b") (re.range "0" "9") (str.to.re "/iis2ebs.asp") (re.range "0" "9") (str.to.re "<title>Actual/pagead/ads?search2.ad.shopnav.com/9899/search/results.php\x0a"))))
(check-sat)
