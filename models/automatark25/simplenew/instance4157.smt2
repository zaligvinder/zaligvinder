(declare-const X String)
; ^[1-9]{1}$|^[1-4]{1}[0-9]{1}$|^50$
(assert (not (str.in.re X (re.union ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "4")) ((_ re.loop 1 1) (re.range "0" "9"))) (str.to.re "50\x0a")))))
(check-sat)
