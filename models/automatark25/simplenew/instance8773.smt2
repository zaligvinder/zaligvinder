(declare-const X String)
; ^(\$?)((\d{1,20})|(\d{1,2}((,?\d{3}){0,6}))|(\d{3}((,?\d{3}){0,5})))$
(assert (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.union ((_ re.loop 1 20) (re.range "0" "9")) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) ((_ re.loop 0 6) (re.++ (re.opt (str.to.re ",")) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 0 5) (re.++ (re.opt (str.to.re ",")) ((_ re.loop 3 3) (re.range "0" "9")))))) (str.to.re "\x0a"))))
(check-sat)
