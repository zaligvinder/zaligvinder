(declare-const X String)
; /\x2epfa([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.pfa") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /filename=[^\n]*\x2e3gp/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".3gp/i\x0a")))))
; DISK\s+\x2Fcgi\x2Flogurl\.cgiSubject\x3AinsertX-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "DISK") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/cgi/logurl.cgiSubject:insertX-Mailer:\x13\x0a"))))
; /filename=[^\n]*\x2ejpx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpx/i\x0a"))))
; (\d{5})[\.\-\+ ]?(\d{4})?
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re "+") (str.to.re " "))) (re.opt ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
