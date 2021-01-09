(declare-const X String)
; ^(\d)?[ ]*[\(\.\-]?(\d{3})[\)\.\-]?[ ]*(\d{3})[\.\- ]?(\d{4})[ ]*(x|ext\.?)?[ ]*(\d{1,7})?$
(assert (str.in.re X (re.++ (re.opt (re.range "0" "9")) (re.* (str.to.re " ")) (re.opt (re.union (str.to.re "(") (str.to.re ".") (str.to.re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ")") (str.to.re ".") (str.to.re "-"))) (re.* (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.* (str.to.re " ")) (re.opt (re.union (str.to.re "x") (re.++ (str.to.re "ext") (re.opt (str.to.re "."))))) (re.* (str.to.re " ")) (re.opt ((_ re.loop 1 7) (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
