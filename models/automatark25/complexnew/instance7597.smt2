(declare-const X String)
; \x2Fcgi\x2Flogurl\.cgi.*User-Agent\x3A.*Host\x3Awww\x2EZSearchResults\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "/cgi/logurl.cgi") (re.* re.allchar) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "Host:www.ZSearchResults.com\x13\x0a")))))
; e2give\.com.*Login\s+adfsgecoiwnf\x23\x23\x23\x23User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "e2give.com") (re.* re.allchar) (str.to.re "Login") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adfsgecoiwnf\x1b####User-Agent:\x0a")))))
; \A(([a-zA-Z]{1,2}\d{1,2})|([a-zA-Z]{2}\d[a-zA-Z]{1}))\x20{0,1}\d[a-zA-Z]{2}\Z
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.range "0" "9") ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.opt (str.to.re " ")) (re.range "0" "9") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
(check-sat)
