(declare-const X String)
; www\x2Ezhongsou\x2Ecom\w+FTX-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "www.zhongsou.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "FTX-Mailer:\x13\x0a"))))
; c\.goclick\.com[^\n\r]*is\s+URLBlaze
(assert (not (str.in.re X (re.++ (str.to.re "c.goclick.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "is") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "URLBlaze\x0a")))))
; (^([1-3]{1}[0-9]{0,}(\.[0-9]{1})?|0(\.[0-9]{1})?|[4]{1}[0-9]{0,}(\.[0]{1})?|5(\.[5]{1}))$)
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "3")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ (str.to.re "0") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (str.to.re "4")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 1) (str.to.re "0"))))) (re.++ (str.to.re "5.") ((_ re.loop 1 1) (str.to.re "5")))) (str.to.re "\x0a"))))
; function.*WEBCAM-.*User-Agent\x3a
(assert (str.in.re X (re.++ (str.to.re "function") (re.* re.allchar) (str.to.re "WEBCAM-") (re.* re.allchar) (str.to.re "User-Agent:\x0a"))))
(check-sat)
