(declare-const X String)
; User-Agent\x3A\dBarwww\x2Eaccoona\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.range "0" "9") (str.to.re "Barwww.accoona.com\x0a"))))
; ^[2-9]{2}[0-9]{8}$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "2" "9")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
