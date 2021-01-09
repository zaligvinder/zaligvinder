(declare-const X String)
; Hello\x2E\s+ovplrichfind\x2EcomCookie\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Hello.") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ovplrichfind.comCookie:\x0a")))))
(check-sat)
