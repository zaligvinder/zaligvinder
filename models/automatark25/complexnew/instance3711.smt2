(declare-const X String)
; EFError.*\x2Fcs\x2Fpop4\x2F\s+
(assert (str.in.re X (re.++ (str.to.re "EFError") (re.* re.allchar) (str.to.re "/cs/pop4/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; Host\x3A[^\n\r]*Travel[^\n\r]*From\x3Awww\x2EZSearchResults\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Travel") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "From:www.ZSearchResults.com\x13\x0a"))))
; /\x2eemf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.emf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
