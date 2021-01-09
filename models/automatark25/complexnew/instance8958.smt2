(declare-const X String)
; ^(s-|S-){0,1}[0-9]{3}\s?[0-9]{2}$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "s-") (str.to.re "S-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^0?[0-9]?[0-9]$|^(100)$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "0")) (re.opt (re.range "0" "9")) (re.range "0" "9")) (str.to.re "100\x0a"))))
; http://www.scribd.com/doc/2569355/Geo-Distance-Search-with-MySQL
(assert (not (str.in.re X (re.++ (str.to.re "http://www") re.allchar (str.to.re "scribd") re.allchar (str.to.re "com/doc/2569355/Geo-Distance-Search-with-MySQL\x0a")))))
; /filename=[^\n]*\x2eaom/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".aom/i\x0a")))))
; \d{2}[.]{1}\d{2}[.]{1}[0-9A-Za-z]{1}
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 1) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a"))))
(check-sat)
