(declare-const X String)
; <([^\s>]*)(\s[^<]*)>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.* (re.union (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ">\x0a") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.* (re.comp (str.to.re "<")))))))
; Host\x3a\s+Host\x3A\x2Ftoolbar\x2Fsupremetb
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:/toolbar/supremetb\x0a"))))
(check-sat)
