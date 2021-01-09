(declare-const X String)
; ([\d]{4}[ |-]?){2}([\d]{11}[ |-]?)([\d]{2})
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "|") (str.to.re "-"))))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a") ((_ re.loop 11 11) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "|") (str.to.re "-")))))))
(check-sat)
