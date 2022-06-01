(declare-const X String)
; Hours\w+User-Agent\u{3A}ChildWebGuardian
(assert (str.in_re X (re.++ (str.to_re "Hours") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "User-Agent:ChildWebGuardian\u{a}"))))
(check-sat)
