(declare-const X String)
; (?s)/\*.*\*/
(assert (not (str.in.re X (re.++ (str.to.re "/*") (re.* re.allchar) (str.to.re "*/\x0a")))))
(check-sat)
