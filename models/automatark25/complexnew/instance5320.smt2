(declare-const X String)
; c\.goclick\.com[^\n\r]*is\s+URLBlaze
(assert (not (str.in.re X (re.++ (str.to.re "c.goclick.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "is") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "URLBlaze\x0a")))))
; for[^\n\r]*Host\x3A\sinternalcyber@yahoo\x2EcomHeadersRedirection
(assert (str.in.re X (re.++ (str.to.re "for") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "internalcyber@yahoo.comHeadersRedirection\x0a"))))
; ([^\.\?\!]*)[\.\?\!]
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re ".") (str.to.re "?") (str.to.re "!"))) (re.union (str.to.re ".") (str.to.re "?") (str.to.re "!")) (str.to.re "\x0a"))))
(check-sat)
