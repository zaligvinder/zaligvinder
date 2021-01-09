(declare-const X String)
; User-Agent\x3A[^\n\r]*connection
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "connection\x0a")))))
(check-sat)
