(declare-const X String)
; 32e3432ew+
(assert (not (str.in_re X (re.++ (str.to_re "32e3432e") (re.+ (str.to_re "w")) (str.to_re "\u{a}")))))
(check-sat)
