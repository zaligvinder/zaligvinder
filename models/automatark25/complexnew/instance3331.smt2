(declare-const X String)
; ^0[1-9]\d{7,8}$
(assert (str.in.re X (re.++ (str.to.re "0") (re.range "1" "9") ((_ re.loop 7 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; loomcompany\x2EcomBasedURLS\swww\.fast-finder\.com
(assert (str.in.re X (re.++ (str.to.re "loomcompany.comBasedURLS") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.com\x0a"))))
(check-sat)
