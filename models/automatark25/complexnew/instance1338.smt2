(declare-const X String)
; quick\x2Eqsrch\x2Ecom\s+WinSession\s+Server\x00
(assert (not (str.in.re X (re.++ (str.to.re "quick.qsrch.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "WinSession") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Server\x00\x0a")))))
; User-Agent\x3Awww\x2Emyarmory\x2EcomHost\x3AUser-Agent\x3aHost\x3AportAuthorization\x3a\x2Fnewsurfer4\x2F
(assert (not (str.in.re X (str.to.re "User-Agent:www.myarmory.comHost:User-Agent:Host:portAuthorization:/newsurfer4/\x0a"))))
; toc=MicrosoftStartupStarLoggerServerX-Mailer\x3a
(assert (not (str.in.re X (str.to.re "toc=MicrosoftStartupStarLoggerServerX-Mailer:\x13\x0a"))))
; ^((\d{1,3}((,\d{3})*|\d*)(\.{0,1})\d+)|\d+)$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.union (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.* (re.range "0" "9"))) (re.opt (str.to.re ".")) (re.+ (re.range "0" "9"))) (re.+ (re.range "0" "9"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2equo/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".quo/i\x0a")))))
(check-sat)
