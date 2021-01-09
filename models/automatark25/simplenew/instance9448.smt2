(declare-const X String)
; ^(\[a-zA-Z '\]+)$
(assert (str.in.re X (re.++ (str.to.re "\x0a[a-zA-Z '") (re.+ (str.to.re "]")))))
(check-sat)
