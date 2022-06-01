(declare-const X String)
; ^[+]?\d*$
(assert (str.in_re X (re.++ (re.opt (str.to_re "+")) (re.* (re.range "0" "9")) (str.to_re "\u{a}"))))
; \D
(assert (str.in_re X (re.++ (re.comp (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
