(declare-const X String)
; \.\s|$(\n|\r\n)
(assert (str.in.re X (re.union (re.++ (str.to.re ".") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.++ (re.union (str.to.re "\x0a") (str.to.re "\x0d\x0a")) (str.to.re "\x0a")))))
; Host\x3A\s+Eyewww\x2Eccnnlc\x2EcomHost\x3aHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Eyewww.ccnnlc.com\x13Host:Host:\x0a")))))
; ^\d{1,7}$
(assert (str.in.re X (re.++ ((_ re.loop 1 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; SystemSleuth1\x2E0versionHost\x3AArrowHost\x3a3Awebsearch\x2Edrsnsrch\x2EcomhostieiWonHost\x3apjpoptwql\x2frlnj
(assert (str.in.re X (str.to.re "SystemSleuth\x131.0versionHost:ArrowHost:3Awebsearch.drsnsrch.com\x13hostieiWonHost:pjpoptwql/rlnj\x0a")))
(check-sat)
