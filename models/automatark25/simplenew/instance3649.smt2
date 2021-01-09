(declare-const X String)
; /^(Frame)?\.jsf/R
(assert (str.in.re X (re.++ (str.to.re "/") (re.opt (str.to.re "Frame")) (str.to.re ".jsf/R\x0a"))))
(check-sat)
