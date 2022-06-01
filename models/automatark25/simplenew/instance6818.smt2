(declare-const X String)
; \u{7D}\u{7B}Trojan\u{3A}\w+by\d+toetbuviaebe\u{2f}eqv\.bvvuplink\u{2E}co\u{2E}krwv=Host\u{3A}
(assert (str.in_re X (re.++ (str.to_re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "by") (re.+ (re.range "0" "9")) (str.to_re "toetbuviaebe/eqv.bvvuplink.co.krwv=Host:\u{a}"))))
(check-sat)
