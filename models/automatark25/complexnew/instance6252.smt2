(declare-const X String)
; (^\([0]\d{2}\))(\d{6,7}$)
(assert (str.in.re X (re.++ ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "\x0a(0") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ")"))))
; ^\$?\d{1,2}\,\d{3}?\,\d{3}?(\.(\d{2}))$|^\$?\d{1,3}?\,\d{3}?(\.(\d{2}))$|^\$?\d{1,3}?(\.(\d{2}))$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "$")) ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "$")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "$")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "\x0a.") ((_ re.loop 2 2) (re.range "0" "9"))))))
; \x2Fcs\x2Fpop4\x2F\s+data\.warezclient\.com
(assert (str.in.re X (re.++ (str.to.re "/cs/pop4/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "data.warezclient.com\x0a"))))
; client\x2Ebaigoo\x2EcomUser\x3A
(assert (str.in.re X (str.to.re "client.baigoo.comUser:\x0a")))
; ^([0-1])*$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "1")) (str.to.re "\x0a")))))
(check-sat)
