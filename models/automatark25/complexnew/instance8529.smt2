(declare-const X String)
; /filename=[^\n]*\x2ewmx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wmx/i\x0a"))))
; password\x3B1\x3BOptixOwner\x3ABarwww\x2Eaccoona\x2Ecom
(assert (not (str.in.re X (str.to.re "password;1;OptixOwner:Barwww.accoona.com\x0a"))))
; onAlertMGS-Internal-Web-Manager
(assert (not (str.in.re X (str.to.re "onAlertMGS-Internal-Web-Manager\x0a"))))
; cyber@yahoo\x2Ecomconfig\x2E180solutions\x2Ecom
(assert (not (str.in.re X (str.to.re "cyber@yahoo.comconfig.180solutions.com\x0a"))))
; /\x2ewax([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.wax") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
