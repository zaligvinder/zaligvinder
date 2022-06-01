(declare-const X String)
; Host\u{3A}\dKeyloggercargo=
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "Keyloggercargo=\u{a}")))))
(check-sat)
