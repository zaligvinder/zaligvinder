(declare-const X String)
; Host\x3aOnlineUser-Agent\x3Awww\x2Evip-se\x2Ecom
(assert (str.in.re X (str.to.re "Host:OnlineUser-Agent:www.vip-se.com\x13\x0a")))
; url=\d+Host\x3A.*backtrust\x2Ecomv\x2ELoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?
(assert (not (str.in.re X (re.++ (str.to.re "url=") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.* re.allchar) (str.to.re "backtrust.comv.LoginHost:/friendship/email_thank_you?\x0a")))))
; ^(\d{1,2})(\s?(H|h)?)(:([0-5]\d))?$
(assert (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.union (str.to.re "H") (str.to.re "h"))))))
; Host\x3A\w+page=largePass-Onseqepagqfphv\x2fsfd
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "page=largePass-Onseqepagqfphv/sfd\x0a"))))
(check-sat)
