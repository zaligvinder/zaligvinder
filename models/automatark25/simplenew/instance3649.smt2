(declare-const X String)
; /^(Frame)?\.jsf/R
(assert (str.in_re X (re.++ (str.to_re "/") (re.opt (str.to_re "Frame")) (str.to_re ".jsf/R\u{a}"))))
(check-sat)
