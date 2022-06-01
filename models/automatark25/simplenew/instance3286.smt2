(declare-const X String)
; ZC-Bridge\w+USER-AttachedReferer\u{3A}youPointsUser-Agent\u{3A}Host\u{3a}
(assert (str.in_re X (re.++ (str.to_re "ZC-Bridge") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "USER-AttachedReferer:youPointsUser-Agent:Host:\u{a}"))))
(check-sat)
