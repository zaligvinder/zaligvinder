(declare-const X String)
; Host\u{3A}\w+User-Agent\u{3A}Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "User-Agent:Host:\u{a}")))))
(check-sat)
