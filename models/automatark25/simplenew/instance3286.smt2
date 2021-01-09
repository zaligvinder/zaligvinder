(declare-const X String)
; ZC-Bridge\w+USER-AttachedReferer\x3AyouPointsUser-Agent\x3AHost\x3a
(assert (str.in.re X (re.++ (str.to.re "ZC-Bridge") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "USER-AttachedReferer:youPointsUser-Agent:Host:\x0a"))))
(check-sat)
