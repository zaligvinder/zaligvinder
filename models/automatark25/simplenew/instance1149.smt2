(declare-const X String)
; [0-1]+
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "1")) (str.to_re "\u{a}")))))
(check-sat)
