(declare-const X String)
; ^[http://www.|www.][\S]+$
(assert (str.in.re X (re.++ (re.union (str.to.re "h") (str.to.re "t") (str.to.re "p") (str.to.re ":") (str.to.re "/") (str.to.re "w") (str.to.re ".") (str.to.re "|")) (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "\x0a"))))
(check-sat)
