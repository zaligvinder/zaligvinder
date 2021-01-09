(declare-const X String)
; /[^\x20-\x7e\x0d\x0a]{4}/P
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (re.range " " "~") (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "/P\x0a"))))
; jsp\s+pjpoptwql\x2frlnj[^\n\r]*Host\x3A
(assert (str.in.re X (re.++ (str.to.re "jsp") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "pjpoptwql/rlnj") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:\x0a"))))
(check-sat)
