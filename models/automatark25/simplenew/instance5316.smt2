(declare-const X String)
; [cC]{1}[0-9]{0,7}
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.union (str.to_re "c") (str.to_re "C"))) ((_ re.loop 0 7) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
