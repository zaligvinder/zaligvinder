(declare-const X String)
; User-Agent\x3a\sRequestwww\x2Ealtnet\x2EcomSubject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Requestwww.altnet.com\x1bSubject:\x0a")))))
(check-sat)
