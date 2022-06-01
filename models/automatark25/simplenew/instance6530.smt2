(declare-const X String)
; \.com/(\d+)$
(assert (not (str.in_re X (re.++ (str.to_re ".com/") (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
