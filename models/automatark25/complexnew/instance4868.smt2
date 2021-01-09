(declare-const X String)
; Host\x3AHost\x3Aalertseqepagqfphv\x2fsfd
(assert (str.in.re X (str.to.re "Host:Host:alertseqepagqfphv/sfd\x0a")))
; Logger\w+searchreslt\dSubject\x3AHANDY\x2FrssScaner
(assert (not (str.in.re X (re.++ (str.to.re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "searchreslt") (re.range "0" "9") (str.to.re "Subject:HANDY/rssScaner\x0a")))))
; Toolbar.*www\x2Ewebcruiser\x2Ecc\w+www\x2Etopadwarereviews\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Toolbar") (re.* re.allchar) (str.to.re "www.webcruiser.cc") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www.topadwarereviews.com\x0a")))))
; /\/images\/[a-zA-Z]\.php\?id\=[0-9]{2,3}(\.\d)?$/Ui
(assert (str.in.re X (re.++ (str.to.re "//images/") (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ".php?id=") ((_ re.loop 2 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9"))) (str.to.re "/Ui\x0a"))))
; /\x2ejp2([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.jp2") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
