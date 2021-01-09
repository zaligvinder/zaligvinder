(declare-const X String)
; .+\.([^.]+)$
(assert (not (str.in.re X (re.++ (re.+ re.allchar) (str.to.re ".") (re.+ (re.comp (str.to.re "."))) (str.to.re "\x0a")))))
(check-sat)
