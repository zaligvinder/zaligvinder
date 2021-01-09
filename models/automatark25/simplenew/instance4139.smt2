(declare-const X String)
; Keylogger-Pro\s+isUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Keylogger-Pro") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "isUser-Agent:\x0a"))))
(check-sat)
