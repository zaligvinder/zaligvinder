(declare-const X String)
; security\s+ad\x2Emokead\x2Ecom\x3C\x2Fchat\x3E
(assert (str.in.re X (re.++ (str.to.re "security") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ad.mokead.com</chat>\x0a"))))
; 5[12345]\d{14}
(assert (str.in.re X (re.++ (str.to.re "5") (re.union (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5")) ((_ re.loop 14 14) (re.range "0" "9")) (str.to.re "\x0a"))))
; \x2Fezsb\s+hirmvtg\x2fggqh\.kqh\dRemotetoolsbar\x2Ekuaiso\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "/ezsb") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "hirmvtg/ggqh.kqh\x1b") (re.range "0" "9") (str.to.re "Remotetoolsbar.kuaiso.com\x0a")))))
(check-sat)
