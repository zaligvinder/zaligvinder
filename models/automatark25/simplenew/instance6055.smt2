(declare-const X String)
; filename=\x22\dDA\s+www\x2Epeer2mail\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "filename=\x22") (re.range "0" "9") (str.to.re "DA") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.peer2mail.com\x0a"))))
(check-sat)
