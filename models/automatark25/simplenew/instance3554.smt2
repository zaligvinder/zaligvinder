(declare-const X String)
; /("(\\["\\]|[^"])*("|$)|\S)+/g
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.++ (str.to.re "\x22") (re.* (re.union (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x22") (str.to.re "\x5c"))) (re.comp (str.to.re "\x22")))) (str.to.re "\x22")) (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "/g\x0a"))))
(check-sat)
