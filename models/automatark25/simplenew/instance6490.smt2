(declare-const X String)
; \b4[0-9]\b
(assert (not (str.in.re X (re.++ (str.to.re "4") (re.range "0" "9") (str.to.re "\x0a")))))
(check-sat)
