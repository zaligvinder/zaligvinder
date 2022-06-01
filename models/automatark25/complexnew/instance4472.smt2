(declare-const X String)
; /\/[a-zA-Z_-]+\.doc$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "_") (str.to_re "-"))) (str.to_re ".doc/U\u{a}")))))
; WindowsAcmeReferer\u{3A}
(assert (not (str.in_re X (str.to_re "WindowsAcmeReferer:\u{a}"))))
(check-sat)
