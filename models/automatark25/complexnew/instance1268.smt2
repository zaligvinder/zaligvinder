(declare-const X String)
; Mirar_KeywordContent
(assert (not (str.in.re X (str.to.re "Mirar_KeywordContent\x13\x0a"))))
; ^[{|\(]?[0-9a-fA-F]{8}[-]?([0-9a-fA-F]{4}[-]?){3}[0-9a-fA-F]{12}[\)|}]?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "{") (str.to.re "|") (str.to.re "("))) ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.opt (str.to.re "-")) ((_ re.loop 3 3) (re.++ ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.opt (str.to.re "-")))) ((_ re.loop 12 12) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.opt (re.union (str.to.re ")") (str.to.re "|") (str.to.re "}"))) (str.to.re "\x0a")))))
(check-sat)
