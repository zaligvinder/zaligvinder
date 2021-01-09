(declare-const X String)
; version.*Host\x3a\s+iWonHost\x3apjpoptwql\x2frlnj
(assert (not (str.in.re X (re.++ (str.to.re "version") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "iWonHost:pjpoptwql/rlnj\x0a")))))
; (facebook|twitter|youtube)
(assert (str.in.re X (re.++ (re.union (str.to.re "facebook") (str.to.re "twitter") (str.to.re "youtube")) (str.to.re "\x0a"))))
(check-sat)
