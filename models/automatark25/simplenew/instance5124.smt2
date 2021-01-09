(declare-const X String)
; ^[1-9]{1,2}(.5)?$
(assert (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "1" "9")) (re.opt (re.++ re.allchar (str.to.re "5"))) (str.to.re "\x0a"))))
(check-sat)
