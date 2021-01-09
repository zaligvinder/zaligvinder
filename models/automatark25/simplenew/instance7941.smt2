(declare-const X String)
; Supreme\s+User-Agent\x3A\s+ApofisToolbarUser
(assert (not (str.in.re X (re.++ (str.to.re "Supreme") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ApofisToolbarUser\x0a")))))
(check-sat)
