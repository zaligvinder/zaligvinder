(declare-const X String)
; Hours\w+User-Agent\x3AChildWebGuardian
(assert (str.in.re X (re.++ (str.to.re "Hours") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "User-Agent:ChildWebGuardian\x0a"))))
(check-sat)
