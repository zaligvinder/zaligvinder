(declare-const X String)
; \x2Fcgi\x2Flogurl\.cgi.*User-Agent\x3A.*Host\x3Awww\x2EZSearchResults\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "/cgi/logurl.cgi") (re.* re.allchar) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "Host:www.ZSearchResults.com\x13\x0a")))))
(check-sat)
