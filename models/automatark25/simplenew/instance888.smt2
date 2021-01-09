(declare-const X String)
; ^(\d{1}\.){0,1}\d{1,3}\,\d{2}$
(assert (str.in.re X (re.++ (re.opt (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "."))) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
