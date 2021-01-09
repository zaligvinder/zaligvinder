(declare-const X String)
; jsp\d+Host\x3A\d+moreKontikiHost\x3aAcmeEvilFTP
(assert (str.in.re X (re.++ (str.to.re "jsp") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "moreKontikiHost:AcmeEvilFTP\x0a"))))
; \x2Fpagead\x2Fads\?search2\.ad\.shopnav\.com\x2F9899\x2Fsearch\x2Fresults\.php
(assert (not (str.in.re X (str.to.re "/pagead/ads?search2.ad.shopnav.com/9899/search/results.php\x0a"))))
; /\x2fib2\x2f$/U
(assert (not (str.in.re X (str.to.re "//ib2//U\x0a"))))
; Host\x3a\dATTENTION\x3A.*User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "ATTENTION:") (re.* re.allchar) (str.to.re "User-Agent:\x0a"))))
(check-sat)
