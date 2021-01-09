(declare-const X String)
; stats\x2edrivecleaner\x2ecomExciteasdbiz\x2Ebiz
(assert (not (str.in.re X (str.to.re "stats.drivecleaner.com\x13Exciteasdbiz.biz\x0a"))))
; UI2ftpquickbrutehttp\x3A\x2F\x2Fdiscounts\x2Eshopathome\x2Ecom\x2Fframeset\x2Easp\?
(assert (str.in.re X (str.to.re "UI2ftpquickbrutehttp://discounts.shopathome.com/frameset.asp?\x0a")))
; snprtz\x7Cdialnoref\x3D\x25user\x5FidPG=SPEEDBAR
(assert (str.in.re X (str.to.re "snprtz|dialnoref=%user_idPG=SPEEDBAR\x0a")))
; \d{5}\-\d{3}
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; Host\x3A\s+cyber@yahoo\x2Ecom\sWordSpy\-LockedURLBlaze
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "cyber@yahoo.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "WordSpy-LockedURLBlaze\x0a"))))
(check-sat)
