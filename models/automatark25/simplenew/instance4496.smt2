(declare-const X String)
; /X-ID\u{3a}\s\u{30}\u{30}+[0-9a-f]{20}(\r\n)+/iH
(assert (str.in_re X (re.++ (str.to_re "/X-ID:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "0") (re.+ (str.to_re "0")) ((_ re.loop 20 20) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.+ (str.to_re "\u{d}\u{a}")) (str.to_re "/iH\u{a}"))))
(check-sat)
