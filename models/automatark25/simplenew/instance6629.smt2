(declare-const X String)
; (\[[abiu][^\[\]]*\])([^\[\]]+)(\[/?[abiu]\])
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "[") (str.to.re "]"))) (str.to.re "\x0a[") (re.union (str.to.re "a") (str.to.re "b") (str.to.re "i") (str.to.re "u")) (re.* (re.union (str.to.re "[") (str.to.re "]"))) (str.to.re "][") (re.opt (str.to.re "/")) (re.union (str.to.re "a") (str.to.re "b") (str.to.re "i") (str.to.re "u")) (str.to.re "]")))))
(check-sat)
