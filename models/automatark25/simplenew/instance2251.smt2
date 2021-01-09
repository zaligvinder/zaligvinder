(declare-const X String)
; User-Agent\x3a\stoWebupdate\.cgi
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toWebupdate.cgi\x0a")))))
(check-sat)
