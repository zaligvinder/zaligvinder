(declare-const X String)
; ^\d*(\.\d*)$
(assert (str.in_re X (re.++ (re.* (re.range "0" "9")) (str.to_re "\u{a}.") (re.* (re.range "0" "9")))))
(check-sat)
