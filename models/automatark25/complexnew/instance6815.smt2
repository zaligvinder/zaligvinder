(declare-const X String)
; horoscope2YAHOOwww\x2e2-seek\x2ecom\x2fsearchHost\x3A
(assert (str.in.re X (str.to.re "horoscope2YAHOOwww.2-seek.com/searchHost:\x0a")))
; \x2Easpx\s+www\x2Ealtnet\x2EcomSubject\x3A
(assert (str.in.re X (re.++ (str.to.re ".aspx") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.altnet.com\x1bSubject:\x0a"))))
; Send=\s+User-Agent\x3A\s+LoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?Host\x3aCenterSubject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Send=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "LoginHost:/friendship/email_thank_you?Host:CenterSubject:\x0a")))))
; Agent\s+Server\s+www\x2Einternet-optimizer\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Agent") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Server") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.internet-optimizer.com\x0a"))))
; ((\(\d{2}\) ?)|(\d{2}/))?\d{2}/\d{4} ([0-2][0-9]\:[0-6][0-9])
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ (str.to.re "(") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ")") (re.opt (str.to.re " "))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "/")))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " \x0a") (re.range "0" "2") (re.range "0" "9") (str.to.re ":") (re.range "0" "6") (re.range "0" "9")))))
(check-sat)
