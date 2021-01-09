(declare-const X String)
; www\x2Ericercadoppia\x2Ecom[^\n\r]*xml\s+User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.ricercadoppia.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "xml") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a")))))
; /filename=[^\n]*\x2ejmh/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jmh/i\x0a")))))
; [0-9]{5}\s?[0-9]{5}
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a"))))
; http://www.scribd.com/doc/2569355/Geo-Distance-Search-with-MySQL
(assert (not (str.in.re X (re.++ (str.to.re "http://www") re.allchar (str.to.re "scribd") re.allchar (str.to.re "com/doc/2569355/Geo-Distance-Search-with-MySQL\x0a")))))
(check-sat)
