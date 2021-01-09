(declare-const X String)
; /\x2ejp2([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.jp2") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; Host\x3A\d+Subject\x3A[^\n\r]*Seconds\-ovplHost\x3AHost\x3ADownload
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Subject:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Seconds-ovplHost:Host:Download\x0a"))))
; SecureNet\sHost\x3AX-Mailer\x3Aas\x2Estarware\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "SecureNet") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:X-Mailer:\x13as.starware.com\x0a"))))
; Mirar_KeywordContent
(assert (str.in.re X (str.to.re "Mirar_KeywordContent\x13\x0a")))
; downloadfile\x2eorg\w+com\x3EHost\x3A
(assert (str.in.re X (re.++ (str.to.re "downloadfile.org") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "com>Host:\x0a"))))
(check-sat)
