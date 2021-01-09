(declare-const X String)
; Version\s+User-Agent\x3Abindmqnqgijmng\x2foj
(assert (str.in.re X (re.++ (str.to.re "Version") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:bindmqnqgijmng/oj\x0a"))))
; ([0-9]{6}|[0-9]{3}\s[0-9]{3})
(assert (str.in.re X (re.++ (re.union ((_ re.loop 6 6) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^\d{1,2}\.\d{3}\.\d{3}[-][0-9kK]{1}$
(assert (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 1 1) (re.union (re.range "0" "9") (str.to.re "k") (str.to.re "K"))) (str.to.re "\x0a"))))
; User-Agent\x3A\s+GETwww\x2Eoemji\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "GETwww.oemji.com\x0a"))))
; toolbarplace\x2Ecom[^\n\r]*Server[^\n\r]*X-Mailer\x3a\sUser-Agent\x3aHost\x3ABar\x2Fnewsurfer4\x2F
(assert (str.in.re X (re.++ (str.to.re "toolbarplace.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Server") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "User-Agent:Host:Bar/newsurfer4/\x0a"))))
(check-sat)
