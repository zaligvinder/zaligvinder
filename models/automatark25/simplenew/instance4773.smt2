(declare-const X String)
; ^1+0+$
(assert (not (str.in_re X (re.++ (re.+ (str.to_re "1")) (re.+ (str.to_re "0")) (str.to_re "\u{a}")))))
(check-sat)
