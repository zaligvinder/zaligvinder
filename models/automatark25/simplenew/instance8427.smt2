(declare-const X String)
; User-Agent\u{3A}\w+data2\.activshopper\.comdll\u{3F}
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "data2.activshopper.comdll?\u{a}"))))
(check-sat)
