(declare-const X String)
; pjpoptwql\x2frlnj\sPG=SPEEDBARadblock\x2Elinkz\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "pjpoptwql/rlnj") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "PG=SPEEDBARadblock.linkz.com\x0a")))))
(check-sat)
