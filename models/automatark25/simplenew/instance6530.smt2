(declare-const X String)
; \.com/(\d+)$
(assert (not (str.in.re X (re.++ (str.to.re ".com/") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
