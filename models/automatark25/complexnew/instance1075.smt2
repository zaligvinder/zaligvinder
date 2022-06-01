(declare-const X String)
; www\u{2E}serverlogic3\u{2E}com\d+ToolBar.*Host\u{3A}HWAEUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "www.serverlogic3.com") (re.+ (re.range "0" "9")) (str.to_re "ToolBar") (re.* re.allchar) (str.to_re "Host:HWAEUser-Agent:\u{a}")))))
; /IPHONE\d+.\d/sH
(assert (str.in_re X (re.++ (str.to_re "/IPHONE") (re.+ (re.range "0" "9")) re.allchar (re.range "0" "9") (str.to_re "/sH\u{a}"))))
; <!--[\d\D]*?-->
(assert (str.in_re X (re.++ (str.to_re "<!--") (re.* (re.union (re.range "0" "9") (re.comp (re.range "0" "9")))) (str.to_re "-->\u{a}"))))
; LoginHost\u{3a}\u{2F}friendship\u{2F}email_thank_you\?
(assert (str.in_re X (str.to_re "LoginHost:/friendship/email_thank_you?\u{a}")))
(check-sat)
