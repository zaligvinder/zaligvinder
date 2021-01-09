(declare-const X String)
; %3f\s+url=[^\n\r]*httpUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "%3f") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "url=") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "httpUser-Agent:\x0a")))))
; X-Mailer\x3aReferer\x3Asponsor2\.ucmore\.com
(assert (not (str.in.re X (str.to.re "X-Mailer:\x13Referer:sponsor2.ucmore.com\x0a"))))
; ('.*$|Rem((\t| ).*$|$)|"(.|"")*?")
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "'") (re.* re.allchar)) (re.++ (str.to.re "Rem") (re.union (str.to.re "\x09") (str.to.re " ")) (re.* re.allchar)) (re.++ (str.to.re "\x22") (re.* (re.union re.allchar (str.to.re "\x22\x22"))) (str.to.re "\x22"))) (str.to.re "\x0a"))))
(check-sat)
