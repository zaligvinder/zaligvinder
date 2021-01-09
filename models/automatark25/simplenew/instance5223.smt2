(declare-const X String)
; Web-Mail\s+\x2Fcgi\x2Flogurl\.cgi.*SurveillanceHost\x3a
(assert (str.in.re X (re.++ (str.to.re "Web-Mail") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/cgi/logurl.cgi") (re.* re.allchar) (str.to.re "Surveillance\x13Host:\x0a"))))
(check-sat)
