(declare-const X String)
; ^01[0-2]\d{8}$
(assert (str.in_re X (re.++ (str.to_re "01") (re.range "0" "2") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
