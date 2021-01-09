(declare-const X String)
; /\/[a-zA-Z_-]+\.rtf$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "-"))) (str.to.re ".rtf/U\x0a")))))
; \x2Fcbn\x2F\s+Host\x3Abinde2give\.com
(assert (str.in.re X (re.++ (str.to.re "/cbn/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:binde2give.com\x0a"))))
; www\x2Elookster\x2Enetnotificationuuid=qisezhin\x2fiqor\.ym
(assert (str.in.re X (str.to.re "www.lookster.netnotification\x13uuid=qisezhin/iqor.ym\x13\x0a")))
(check-sat)
