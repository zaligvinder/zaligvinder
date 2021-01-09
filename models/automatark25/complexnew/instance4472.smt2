(declare-const X String)
; /\/[a-zA-Z_-]+\.doc$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "-"))) (str.to.re ".doc/U\x0a")))))
; WindowsAcmeReferer\x3A
(assert (not (str.in.re X (str.to.re "WindowsAcmeReferer:\x0a"))))
(check-sat)
