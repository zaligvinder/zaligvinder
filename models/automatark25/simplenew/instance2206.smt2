(declare-const X String)
; http://[^/]*/
(assert (str.in.re X (re.++ (str.to.re "http://") (re.* (re.comp (str.to.re "/"))) (str.to.re "/\x0a"))))
(check-sat)
