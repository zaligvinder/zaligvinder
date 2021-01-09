(declare-const X String)
; (^[0]{1}$|^[-]?[1-9]{1}\d*$)
(assert (str.in.re X (re.++ (re.union ((_ re.loop 1 1) (str.to.re "0")) (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re "\x0a"))))
; /\/stat_n\/$/U
(assert (str.in.re X (str.to.re "//stat_n//U\x0a")))
(check-sat)
