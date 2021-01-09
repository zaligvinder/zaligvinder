(declare-const X String)
; \.icosearch\x2econduit\x2ecom\x3Clogs\x40logs\x2Ecom\x3E
(assert (not (str.in.re X (str.to.re ".icosearch.conduit.com<logs@logs.com>\x0a"))))
; [-'a-zA-Z]
(assert (str.in.re X (re.++ (re.union (str.to.re "-") (str.to.re "'") (re.range "a" "z") (re.range "A" "Z")) (str.to.re "\x0a"))))
(check-sat)
