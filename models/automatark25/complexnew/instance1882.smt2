(declare-const X String)
; ^[-+]?\d*$
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.* (re.range "0" "9")) (str.to_re "\u{a}"))))
; twfofrfzlugq\u{2f}eve\.qd\d+
(assert (not (str.in_re X (re.++ (str.to_re "twfofrfzlugq/eve.qd") (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
; /\u{2F}mrow\u{5F}pin\u{2F}\u{3F}id\d+[a-z]{5,}\d{5}\u{26}rnd\u{3D}\d+/smi
(assert (str.in_re X (re.++ (str.to_re "//mrow_pin/?id") (re.+ (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "&rnd=") (re.+ (re.range "0" "9")) (str.to_re "/smi\u{a}") ((_ re.loop 5 5) (re.range "a" "z")) (re.* (re.range "a" "z")))))
(check-sat)
