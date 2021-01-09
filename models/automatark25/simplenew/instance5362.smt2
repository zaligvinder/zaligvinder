(declare-const X String)
; ServerOVNsearch2\.ad\.shopnav\.com\x2F9899\x2Fsearch\x2Fresults\.php
(assert (not (str.in.re X (str.to.re "ServerOVNsearch2.ad.shopnav.com/9899/search/results.php\x0a"))))
(check-sat)
