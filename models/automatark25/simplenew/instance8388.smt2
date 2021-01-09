(declare-const X String)
; (\_\_)(.+)(\_\_)
(assert (not (str.in.re X (re.++ (str.to.re "__") (re.+ re.allchar) (str.to.re "__\x0a")))))
(check-sat)
