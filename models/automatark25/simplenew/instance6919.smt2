(declare-const X String)
; ^\d{1,2}((,)|(,25)|(,50)|(,5)|(,75)|(,0)|(,00))?$
(assert (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (str.to.re ",") (str.to.re ",25") (str.to.re ",50") (str.to.re ",5") (str.to.re ",75") (str.to.re ",0") (str.to.re ",00"))) (str.to.re "\x0a"))))
(check-sat)
