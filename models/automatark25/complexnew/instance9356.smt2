(declare-const X String)
; /^(www\.|http:\/\/|https:\/\/|http:\/\/www\.|https:\/\/www\.)[a-z0-9]+\.[a-z]{2,4}$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "www.") (str.to.re "http://") (str.to.re "https://") (str.to.re "http://www.") (str.to.re "https://www.")) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 4) (re.range "a" "z")) (str.to.re "/\x0a")))))
; \x5D\x2520\x5BPort_\d+TM_SEARCH3engineto=\x2Fezsb\s\x3A
(assert (str.in.re X (re.++ (str.to.re "]%20[Port_") (re.+ (re.range "0" "9")) (str.to.re "TM_SEARCH3engineto=/ezsb") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re ":\x0a"))))
(check-sat)
