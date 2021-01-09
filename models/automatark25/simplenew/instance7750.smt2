(declare-const X String)
; (.*)-----(BEGIN|END)([^-]*)-----(.*)
(assert (not (str.in.re X (re.++ (re.* re.allchar) (str.to.re "-----") (re.union (str.to.re "BEGIN") (str.to.re "END")) (re.* (re.comp (str.to.re "-"))) (str.to.re "-----") (re.* re.allchar) (str.to.re "\x0a")))))
(check-sat)
