(declare-const X String)
; /\/[a-zA-Z_-]+\.rtf$/U
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "-"))) (str.to.re ".rtf/U\x0a"))))
(check-sat)
