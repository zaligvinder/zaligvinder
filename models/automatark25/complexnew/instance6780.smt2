(declare-const X String)
; TPSystem\s+TencentTraveler\s+www\u{2e}urlblaze\u{2e}netCurrentHost\u{3A}Windows
(assert (not (str.in_re X (re.++ (str.to_re "TPSystem") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TencentTraveler") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.urlblaze.netCurrentHost:Windows\u{a}")))))
; ^(27|0)[0-9]{9}
(assert (str.in_re X (re.++ (re.union (str.to_re "27") (str.to_re "0")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
