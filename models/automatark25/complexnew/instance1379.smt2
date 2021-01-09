(declare-const X String)
; ^[0-9]{4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\/[a-zA-Z_-]+\.doc$/U
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "-"))) (str.to.re ".doc/U\x0a"))))
(check-sat)
