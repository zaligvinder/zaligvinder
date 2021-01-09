(declare-const X String)
; www\x2Eserverlogic3\x2Ecom\d+ToolBar.*Host\x3AHWAEUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.serverlogic3.com") (re.+ (re.range "0" "9")) (str.to.re "ToolBar") (re.* re.allchar) (str.to.re "Host:HWAEUser-Agent:\x0a")))))
; /IPHONE\d+.\d/sH
(assert (str.in.re X (re.++ (str.to.re "/IPHONE") (re.+ (re.range "0" "9")) re.allchar (re.range "0" "9") (str.to.re "/sH\x0a"))))
; <!--[\d\D]*?-->
(assert (str.in.re X (re.++ (str.to.re "<!--") (re.* (re.union (re.range "0" "9") (re.comp (re.range "0" "9")))) (str.to.re "-->\x0a"))))
; LoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?
(assert (str.in.re X (str.to.re "LoginHost:/friendship/email_thank_you?\x0a")))
(check-sat)
