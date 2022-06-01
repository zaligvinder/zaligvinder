(declare-const X String)
; [^abc]
(assert (not (str.in_re X (re.++ (re.union (str.to_re "a") (str.to_re "b") (str.to_re "c")) (str.to_re "\u{a}")))))
(check-sat)
