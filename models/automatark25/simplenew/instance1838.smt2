(declare-const X String)
; ^(\+){0,1}\d{1,10}$
(assert (str.in_re X (re.++ (re.opt (str.to_re "+")) ((_ re.loop 1 10) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
