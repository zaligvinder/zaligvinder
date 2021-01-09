(declare-const X String)
; forum=related\x2Eyok\x2Ecom\sStarted\!$3
(assert (not (str.in.re X (re.++ (str.to.re "forum=related.yok.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Started!3\x0a")))))
; xpsp2-\s+spyblpat.*is\x2EphpBarFrom\x3A
(assert (str.in.re X (re.++ (str.to.re "xpsp2-") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblpat") (re.* re.allchar) (str.to.re "is.phpBarFrom:\x0a"))))
(check-sat)
