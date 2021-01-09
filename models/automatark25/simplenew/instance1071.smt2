(declare-const X String)
; Host\x3A\dKeyloggercargo=
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "Keyloggercargo=\x0a")))))
(check-sat)
