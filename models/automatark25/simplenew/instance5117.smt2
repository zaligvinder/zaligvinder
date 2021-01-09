(declare-const X String)
; Anal\s+news.*User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Anal") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "news") (re.* re.allchar) (str.to.re "User-Agent:\x0a")))))
(check-sat)
