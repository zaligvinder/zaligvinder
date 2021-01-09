(declare-const X String)
; User-Agent\x3Awww\x2Emyarmory\x2EcomHost\x3AUser-Agent\x3aHost\x3AportAuthorization\x3a\x2Fnewsurfer4\x2F
(assert (str.in.re X (str.to.re "User-Agent:www.myarmory.comHost:User-Agent:Host:portAuthorization:/newsurfer4/\x0a")))
; Handyst=ClassStopperHost\x3ASpamBlockerUtility
(assert (str.in.re X (str.to.re "Handyst=ClassStopperHost:SpamBlockerUtility\x0a")))
; ^((\\{2}\w+)\$?)((\\{1}\w+)*$)
(assert (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 1 1) (str.to.re "\x5c")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "\x0a") (re.opt (str.to.re "$")) ((_ re.loop 2 2) (str.to.re "\x5c")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))))
(check-sat)
