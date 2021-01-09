(declare-const X String)
; search\x2econduit\x2ecom\sPARSER.*
(assert (not (str.in.re X (re.++ (str.to.re "search.conduit.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "PARSER") (re.* re.allchar) (str.to.re "\x0a")))))
(check-sat)
