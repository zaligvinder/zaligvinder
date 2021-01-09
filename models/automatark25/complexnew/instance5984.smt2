(declare-const X String)
; weatherSubject\x3aX-Mailer\x3aTOOLBAR\x2Fnewsurfer4\x2F
(assert (str.in.re X (str.to.re "weatherSubject:X-Mailer:\x13TOOLBAR/newsurfer4/\x0a")))
; wowokay\d+FTP\s+Host\x3AFiltered\x22reaction\x2Etxt\x22
(assert (not (str.in.re X (re.++ (str.to.re "wowokay") (re.+ (re.range "0" "9")) (str.to.re "FTP") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Filtered\x22reaction.txt\x22\x0a")))))
(check-sat)
