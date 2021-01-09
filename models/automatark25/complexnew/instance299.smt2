(declare-const X String)
; ad\x2Esearchsquire\x2Ecom[^\n\r]*User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "ad.searchsquire.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a"))))
; e2give\.comConnectionSpywww\x2Eslinkyslate
(assert (not (str.in.re X (str.to.re "e2give.comConnectionSpywww.slinkyslate\x0a"))))
; ^[1-9][0-9][0-9][0-9]$
(assert (str.in.re X (re.++ (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (str.to.re "\x0a"))))
(check-sat)
