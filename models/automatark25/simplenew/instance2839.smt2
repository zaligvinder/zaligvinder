(declare-const X String)
; User-Agent\x3A\s+User-Agent\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:User-Agent:\x0a"))))
(check-sat)
