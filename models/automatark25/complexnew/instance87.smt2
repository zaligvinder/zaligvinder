(declare-const X String)
; /filename=[^\n]*\x2ecnt/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cnt/i\x0a")))))
; url=http\x3A\s+jsp[^\n\r]*serverHOST\x3ASubject\x3Ai\-femdom\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "url=http:\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "jsp") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "serverHOST:Subject:i-femdom.com\x0a"))))
(check-sat)
