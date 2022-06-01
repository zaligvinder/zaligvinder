(declare-const X String)
; ^([1][0-9]|[0-9])[1-9]{2}$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "1") (re.range "0" "9")) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "1" "9")) (str.to_re "\u{a}")))))
; \u{28}BDLL\u{29}\s+CD\u{2F}.*Host\u{3A}
(assert (str.in_re X (re.++ (str.to_re "(BDLL)\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "CD/") (re.* re.allchar) (str.to_re "Host:\u{a}"))))
(check-sat)
