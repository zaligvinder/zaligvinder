(declare-const X String)
; User-Agent\x3A[^\n\r]*Host\x3A.*\x2Ftoolbar\x2FHost\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "/toolbar/Host:User-Agent:\x0a"))))
(check-sat)
