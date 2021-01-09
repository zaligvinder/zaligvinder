(declare-const X String)
; source\=IncrediFind\s+Host\x3A\s+Host\x3AHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "source=IncrediFind") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Host:\x0a")))))
(check-sat)
