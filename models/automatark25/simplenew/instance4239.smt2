(declare-const X String)
; about\d+yxegtd\x2fefcwgHost\x3ATPSystemwww\x2Ee-finder\x2Ecc
(assert (str.in.re X (re.++ (str.to.re "about") (re.+ (re.range "0" "9")) (str.to.re "yxegtd/efcwgHost:TPSystemwww.e-finder.cc\x0a"))))
(check-sat)
