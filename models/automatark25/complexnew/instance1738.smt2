(declare-const X String)
; /_X(86|64)&a4=/P
(assert (str.in_re X (re.++ (str.to_re "/_X") (re.union (str.to_re "86") (str.to_re "64")) (str.to_re "&a4=/P\u{a}"))))
; Hours\w+User-Agent\u{3A}ChildWebGuardian
(assert (not (str.in_re X (re.++ (str.to_re "Hours") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "User-Agent:ChildWebGuardian\u{a}")))))
(check-sat)
