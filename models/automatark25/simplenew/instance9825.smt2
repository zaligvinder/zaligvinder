(declare-const X String)
; \x7D\x7BTrojan\x3A\w+Host\x3Arprpgbnrppb\x2fci
(assert (str.in.re X (re.++ (str.to.re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:rprpgbnrppb/ci\x0a"))))
(check-sat)
