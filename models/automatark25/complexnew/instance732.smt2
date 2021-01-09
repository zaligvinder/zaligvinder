(declare-const X String)
; User-Agent\x3AX-Mailer\x3aHost\x3Adcww\x2Edmcast\x2Ecom
(assert (str.in.re X (str.to.re "User-Agent:X-Mailer:\x13Host:dcww.dmcast.com\x0a")))
; ^\d{1,2}\/\d{2,4}$
(assert (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
