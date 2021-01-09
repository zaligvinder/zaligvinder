(declare-const X String)
; /filename=[^\n]*\x2ep2g/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".p2g/i\x0a"))))
; www\x2Eeblocs\x2Ecomcorep\x2Edmcast\x2Ecom
(assert (str.in.re X (str.to.re "www.eblocs.com\x1bcorep.dmcast.com\x0a")))
; /filename=[^\n]*\x2easx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".asx/i\x0a")))))
; (^3[47])((\d{11}$)|(\d{13}$))
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 11 11) (re.range "0" "9")) ((_ re.loop 13 13) (re.range "0" "9"))) (str.to.re "\x0a3") (re.union (str.to.re "4") (str.to.re "7"))))))
(check-sat)
