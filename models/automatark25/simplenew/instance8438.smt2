(declare-const X String)
; (<input )(.*?)(>)
(assert (str.in.re X (re.++ (str.to.re "<input ") (re.* re.allchar) (str.to.re ">\x0a"))))
(check-sat)
