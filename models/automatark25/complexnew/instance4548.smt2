(declare-const X String)
; ^[13][a-zA-Z0-9]{26,33}$
(assert (str.in.re X (re.++ (re.union (str.to.re "1") (str.to.re "3")) ((_ re.loop 26 33) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
; /\x2eram?([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.ra") (re.opt (str.to.re "m")) (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; nick_name=CIA-Testsearchnuggetprotocolframe_ver2MailerToolbarUser-Agent\x3afromEnTrY
(assert (str.in.re X (str.to.re "nick_name=CIA-Testsearchnugget\x13protocolframe_ver2MailerToolbarUser-Agent:fromEnTrY\x0a")))
; <!*[^<>]*>
(assert (str.in.re X (re.++ (str.to.re "<") (re.* (str.to.re "!")) (re.* (re.union (str.to.re "<") (str.to.re ">"))) (str.to.re ">\x0a"))))
(check-sat)
