(declare-const X String)
; \x2Fpagead\x2Fads\?search2\.ad\.shopnav\.com\x2F9899\x2Fsearch\x2Fresults\.php
(assert (str.in.re X (str.to.re "/pagead/ads?search2.ad.shopnav.com/9899/search/results.php\x0a")))
(check-sat)
