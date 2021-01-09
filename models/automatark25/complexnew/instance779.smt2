(declare-const X String)
; (^(6334)[5-9](\d{11}$|\d{13,14}$))
(assert (str.in.re X (re.++ (str.to.re "\x0a6334") (re.range "5" "9") (re.union ((_ re.loop 11 11) (re.range "0" "9")) ((_ re.loop 13 14) (re.range "0" "9"))))))
; installs\x2Eseekmo\x2Ecom\s+spyblini\x2EiniUpdateUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "installs.seekmo.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblini.iniUpdateUser-Agent:\x0a")))))
(check-sat)
