(declare-const X String)
; Minutes\s+\x2Fcgi\x2Flogurl\.cgi\s+e2give\.com
(assert (str.in.re X (re.++ (str.to.re "Minutes") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/cgi/logurl.cgi") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "e2give.com\x0a"))))
; ActMonHost\x3ABossUser-Agent\x3A
(assert (str.in.re X (str.to.re "ActMonHost:BossUser-Agent:\x0a")))
(check-sat)
