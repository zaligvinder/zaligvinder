(declare-const X String)
; User.*User-Agent\x3A.*ResultATTENTION\x3Ariggiymd\x2fwdhi\.vhi
(assert (str.in.re X (re.++ (str.to.re "User") (re.* re.allchar) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "ResultATTENTION:riggiymd/wdhi.vhi\x0a"))))
; ^([0-9]{0,5}|[0-9]{0,5}\.[0-9]{0,3})$
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 0 5) (re.range "0" "9")) (re.++ ((_ re.loop 0 5) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 0 3) (re.range "0" "9")))) (str.to.re "\x0a")))))
; BysooTBUser-Agent\x3A
(assert (str.in.re X (str.to.re "BysooTBUser-Agent:\x0a")))
; toolbarplace\x2Ecom[^\n\r]*Server[^\n\r]*X-Mailer\x3a\sUser-Agent\x3aHost\x3ABar\x2Fnewsurfer4\x2F
(assert (not (str.in.re X (re.++ (str.to.re "toolbarplace.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Server") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "User-Agent:Host:Bar/newsurfer4/\x0a")))))
(check-sat)
