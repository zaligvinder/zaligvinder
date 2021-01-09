(declare-const X String)
; (@\s*".*?")|("([^"\\]|\\.)*?")
(assert (not (str.in.re X (re.union (re.++ (str.to.re "@") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22") (re.* re.allchar) (str.to.re "\x22")) (re.++ (str.to.re "\x0a\x22") (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (str.to.re "\x22") (str.to.re "\x5c"))) (str.to.re "\x22"))))))
; www\x2Elookster\x2Enetnotificationuuid=qisezhin\x2fiqor\.ym
(assert (str.in.re X (str.to.re "www.lookster.netnotification\x13uuid=qisezhin/iqor.ym\x13\x0a")))
; for\x2Fproducts\x2Fspyblocs\x2FHost\x3Aocllceclbhs\x2fgth
(assert (str.in.re X (str.to.re "for/products/spyblocs/\x13Host:ocllceclbhs/gth\x0a")))
; ^((00|\+)49)?(0?[2-9][0-9]{1,})$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "00") (str.to.re "+")) (str.to.re "49"))) (str.to.re "\x0a") (re.opt (str.to.re "0")) (re.range "2" "9") (re.+ (re.range "0" "9"))))))
(check-sat)
