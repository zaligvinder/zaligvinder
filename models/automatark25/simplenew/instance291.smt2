(declare-const X String)
; \[(.+)\].+\[n?varchar\].+NULL,
(assert (not (str.in.re X (re.++ (str.to.re "[") (re.+ re.allchar) (str.to.re "]") (re.+ re.allchar) (str.to.re "[") (re.opt (str.to.re "n")) (str.to.re "varchar]") (re.+ re.allchar) (str.to.re "NULL,\x0a")))))
(check-sat)
