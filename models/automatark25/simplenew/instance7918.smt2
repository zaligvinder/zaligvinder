(declare-const X String)
; xpsp2-\s+spyblpat.*is\x2EphpBarFrom\x3A
(assert (not (str.in.re X (re.++ (str.to.re "xpsp2-") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblpat") (re.* re.allchar) (str.to.re "is.phpBarFrom:\x0a")))))
(check-sat)
