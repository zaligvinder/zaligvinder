(declare-const X String)
; \x3Cchat\x3EHost\x3Atid\x3D\x7B
(assert (str.in.re X (str.to.re "<chat>\x1bHost:tid={\x0a")))
; ^[0-9]{5}(-[0-9]{4})?$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
; \x7D\x7BTrojan\x3A\w+Host\x3Arprpgbnrppb\x2fci
(assert (str.in.re X (re.++ (str.to.re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:rprpgbnrppb/ci\x0a"))))
(check-sat)
