(declare-const X String)
; ^([0-7])*$
(assert (not (str.in_re X (re.++ (re.* (re.range "0" "7")) (str.to_re "\u{a}")))))
(check-sat)
