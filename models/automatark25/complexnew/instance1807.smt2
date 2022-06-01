(declare-const X String)
; \u{3C}chat\u{3E}Host\u{3A}tid\u{3D}\u{7B}
(assert (str.in_re X (str.to_re "<chat>\u{1b}Host:tid={\u{a}")))
; ^[0-9]{5}(-[0-9]{4})?$
(assert (not (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; \u{7D}\u{7B}Trojan\u{3A}\w+Host\u{3A}rprpgbnrppb\u{2f}ci
(assert (str.in_re X (re.++ (str.to_re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:rprpgbnrppb/ci\u{a}"))))
(check-sat)
