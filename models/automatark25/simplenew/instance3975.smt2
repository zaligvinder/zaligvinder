(declare-const X String)
; connectedNodes\s+insert\s+haveFTUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "connectedNodes") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "insert") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "haveFTUser-Agent:\x0a"))))
(check-sat)
