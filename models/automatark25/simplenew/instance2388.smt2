(declare-const X String)
; [^abc]
(assert (not (str.in.re X (re.++ (re.union (str.to.re "a") (str.to.re "b") (str.to.re "c")) (str.to.re "\x0a")))))
(check-sat)
