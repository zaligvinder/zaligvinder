(declare-const X String)
; Handyst=ClassStopperHost\x3ASpamBlockerUtility
(assert (not (str.in.re X (str.to.re "Handyst=ClassStopperHost:SpamBlockerUtility\x0a"))))
; User-Agent\x3AUser-Agent\x3AHost\x3ASoftActivityYeah\!
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:Host:SoftActivity\x13Yeah!\x0a")))
; ^\d+((\.|\,)\d+)?$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re ".") (str.to.re ",")) (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; User-Agent\x3AUser-Agent\x3a
(assert (not (str.in.re X (str.to.re "User-Agent:User-Agent:\x0a"))))
; \x2Fta\x2FNEWS\x2Fpassword\x3B1\x3BOptix
(assert (str.in.re X (str.to.re "/ta/NEWS/password;1;Optix\x0a")))
(check-sat)
