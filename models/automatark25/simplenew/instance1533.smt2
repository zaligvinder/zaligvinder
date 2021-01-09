(declare-const X String)
; Address\x3A\s+SbAtsHTTP_RAT_Subject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Address:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SbAtsHTTP_RAT_Subject:\x0a")))))
(check-sat)
