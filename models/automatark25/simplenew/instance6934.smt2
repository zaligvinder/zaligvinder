(declare-const X String)
; User-Agent\u{3A}\d+moreKontikiHost\u{3a}
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "moreKontikiHost:\u{a}"))))
(check-sat)
