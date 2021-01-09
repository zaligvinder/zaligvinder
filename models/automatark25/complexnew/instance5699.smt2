(declare-const X String)
; are\d+X-Mailer\x3a+Host\x3A\x2Easpx
(assert (str.in.re X (re.++ (str.to.re "are") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer") (re.+ (str.to.re ":")) (str.to.re "Host:.aspx\x0a"))))
; www\x2Ealtnet\x2Ecom[^\n\r]*Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.altnet.com\x1b") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:\x0a")))))
; /^\/\?[a-f0-9]{32}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
; Host\x3anotificationwww\.thecommunicator\.net
(assert (not (str.in.re X (str.to.re "Host:notification\x13www.thecommunicator.net\x0a"))))
; search\.dropspam\.com.*pjpoptwql\x2frlnj
(assert (not (str.in.re X (re.++ (str.to.re "search.dropspam.com") (re.* re.allchar) (str.to.re "pjpoptwql/rlnj\x0a")))))
(check-sat)
