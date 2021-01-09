(declare-const X String)
; GREATDriplineisUser-Agent\x3Alogs===========\x3E
(assert (str.in.re X (str.to.re "GREATDriplineisUser-Agent:logs===========>\x0a")))
; Minutes\s+\x2Fcgi\x2Flogurl\.cgi\s+e2give\.com
(assert (str.in.re X (re.++ (str.to.re "Minutes") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/cgi/logurl.cgi") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "e2give.com\x0a"))))
(check-sat)
