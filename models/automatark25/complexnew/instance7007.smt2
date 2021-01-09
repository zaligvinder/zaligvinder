(declare-const X String)
; Minutes\s+\x2Fcgi\x2Flogurl\.cgi\s+e2give\.com
(assert (str.in.re X (re.++ (str.to.re "Minutes") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/cgi/logurl.cgi") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "e2give.com\x0a"))))
; IDENTIFY.*\x2Fezsb\d+X-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "IDENTIFY") (re.* re.allchar) (str.to.re "/ezsb") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13\x0a"))))
; toolbar_domain_redirectlibManager\x2Edll\x5Eget
(assert (not (str.in.re X (str.to.re "toolbar_domain_redirectlibManager.dll^get\x0a"))))
(check-sat)
