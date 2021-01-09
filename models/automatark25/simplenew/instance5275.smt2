(declare-const X String)
; \.\s|$(\n|\r\n)
(assert (not (str.in.re X (re.union (re.++ (str.to.re ".") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.++ (re.union (str.to.re "\x0a") (str.to.re "\x0d\x0a")) (str.to.re "\x0a"))))))
(check-sat)
