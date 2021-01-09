(declare-const X String)
; ^[^-]{1}?[^\"\']*$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.comp (str.to.re "-"))) (re.* (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "\x0a")))))
(check-sat)
