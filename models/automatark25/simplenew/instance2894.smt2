(declare-const X String)
; [\\s+,]
(assert (str.in.re X (re.++ (re.union (str.to.re "\x5c") (str.to.re "s") (str.to.re "+") (str.to.re ",")) (str.to.re "\x0a"))))
(check-sat)
