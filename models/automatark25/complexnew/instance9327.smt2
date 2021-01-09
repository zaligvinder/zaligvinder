(declare-const X String)
; this\s+MyBrowser\d+Redirector\x22ServerHost\x3AX-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "this") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "MyBrowser") (re.+ (re.range "0" "9")) (str.to.re "Redirector\x22ServerHost:X-Mailer:\x13\x0a"))))
; Supervisor\s+User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Supervisor") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a"))))
; <\*?font              # Match start of Font Tag
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.opt (str.to.re "*")) (str.to.re "font              # Match start of Font Tag\x0a")))))
; Address\x3A\s+SbAtsHTTP_RAT_Subject\x3A
(assert (str.in.re X (re.++ (str.to.re "Address:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SbAtsHTTP_RAT_Subject:\x0a"))))
(check-sat)
