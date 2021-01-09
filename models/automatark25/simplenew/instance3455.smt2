(declare-const X String)
; /^[^\s]*\x0D\x0A$/P
(assert (str.in.re X (re.++ (str.to.re "/") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0d\x0a/P\x0a"))))
(check-sat)
