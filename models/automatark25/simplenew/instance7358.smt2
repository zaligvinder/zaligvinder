(declare-const X String)
; \x7D\x7BTrojan\x3A\w+by\d+toetbuviaebe\x2feqv\.bvvuplink\x2Eco\x2Ekrwv=Host\x3A
(assert (str.in.re X (re.++ (str.to.re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "by") (re.+ (re.range "0" "9")) (str.to.re "toetbuviaebe/eqv.bvvuplink.co.krwv=Host:\x0a"))))
(check-sat)
