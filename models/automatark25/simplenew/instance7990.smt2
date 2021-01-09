(declare-const X String)
; /\/[a-zA-Z_-]+\.ee$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "-"))) (str.to.re ".ee/U\x0a")))))
(check-sat)
