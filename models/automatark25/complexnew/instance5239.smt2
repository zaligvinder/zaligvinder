(declare-const X String)
; Host\x3AX-Mailer\x3Aas\x2Estarware\x2Ecom
(assert (not (str.in.re X (str.to.re "Host:X-Mailer:\x13as.starware.com\x0a"))))
; hirmvtg\x2fggqh\.kqh\w+whenu\x2Ecom\w+weatherHost\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "hirmvtg/ggqh.kqh\x1b") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "whenu.com\x13") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "weatherHost:User-Agent:\x0a"))))
; ^([0-9]{6}[\s\-]{1}[0-9]{12}|[0-9]{18})$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 12 12) (re.range "0" "9"))) ((_ re.loop 18 18) (re.range "0" "9"))) (str.to.re "\x0a"))))
; User-Agent\x3A\w+www\x2Etopadwarereviews\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www.topadwarereviews.com\x0a"))))
; User-Agent\x3A\dBarwww\x2Eaccoona\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.range "0" "9") (str.to.re "Barwww.accoona.com\x0a")))))
(check-sat)
