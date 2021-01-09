(declare-const X String)
; \x22The\s+e2give\.com\s+NETObserve
(assert (str.in.re X (re.++ (str.to.re "\x22The") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "e2give.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "NETObserve\x0a"))))
; /\x2f(css|upload)\x2f[a-z]{2}[0-9]{3}\x2eccs/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.union (str.to.re "css") (str.to.re "upload")) (str.to.re "/") ((_ re.loop 2 2) (re.range "a" "z")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".ccs/U\x0a")))))
(check-sat)
