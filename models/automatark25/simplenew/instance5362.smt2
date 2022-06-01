(declare-const X String)
; ServerOVNsearch2\.ad\.shopnav\.com\u{2F}9899\u{2F}search\u{2F}results\.php
(assert (not (str.in_re X (str.to_re "ServerOVNsearch2.ad.shopnav.com/9899/search/results.php\u{a}"))))
(check-sat)
