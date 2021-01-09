(declare-const X String)
; EI.*to\s+AppName\x2FGRSI\|Server\|Host\x3Aorigin\x3Dsidefind
(assert (not (str.in.re X (re.++ (str.to.re "EI") (re.* re.allchar) (str.to.re "to") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "AppName/GRSI|Server|\x13Host:origin=sidefind\x0a")))))
; /^(\x75|\x2d|\x2f|\x73|\xa2|\x2e|\x24|\x74)/sR
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "u") (str.to.re "-") (str.to.re "/") (str.to.re "s") (str.to.re "\xa2") (str.to.re ".") (str.to.re "$") (str.to.re "t")) (str.to.re "/sR\x0a")))))
; Send=\s+User-Agent\x3A\s+LoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?Host\x3aCenterSubject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Send=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "LoginHost:/friendship/email_thank_you?Host:CenterSubject:\x0a")))))
; Subject\x3A.*www\x2Ewebcruiser\x2Ecc\w+www\x2Etopadwarereviews\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.* re.allchar) (str.to.re "www.webcruiser.cc") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www.topadwarereviews.com\x0a")))))
(check-sat)
