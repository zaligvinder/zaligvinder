(declare-const X String)
; myInstance\.myMethod(.*)\(.*myParam.*\)
(assert (str.in.re X (re.++ (str.to.re "myInstance.myMethod") (re.* re.allchar) (str.to.re "(") (re.* re.allchar) (str.to.re "myParam") (re.* re.allchar) (str.to.re ")\x0a"))))
(check-sat)
