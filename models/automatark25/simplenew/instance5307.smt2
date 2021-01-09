(declare-const X String)
; /^\/\?q=[^&]*##1$/U
(assert (not (str.in.re X (re.++ (str.to.re "//?q=") (re.* (re.comp (str.to.re "&"))) (str.to.re "##1/U\x0a")))))
(check-sat)
