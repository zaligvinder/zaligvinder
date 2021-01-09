(declare-const X String)
; URL\s+url=Host\x3ahttpUser-Agent\x3ASubject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "URL") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "url=Host:httpUser-Agent:Subject:\x0a")))))
(check-sat)
