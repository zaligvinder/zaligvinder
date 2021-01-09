(declare-const X String)
; \\$\\d+[.]?\\d*
(assert (str.in.re X (re.++ (str.to.re "\x5c\x5c") (re.+ (str.to.re "d")) (re.opt (str.to.re ".")) (str.to.re "\x5c") (re.* (str.to.re "d")) (str.to.re "\x0a"))))
; /^\/b\/(letr|req|opt|eve)\/[0-9a-fA-F]{24}$/U
(assert (str.in.re X (re.++ (str.to.re "//b/") (re.union (str.to.re "letr") (str.to.re "req") (str.to.re "opt") (str.to.re "eve")) (str.to.re "/") ((_ re.loop 24 24) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "/U\x0a"))))
; \x2Easpxdata\.warezclient\.comWinCrashrunningUser-Agent\x3Awowokay
(assert (not (str.in.re X (str.to.re ".aspxdata.warezclient.comWinCrashrunningUser-Agent:wowokay\x0a"))))
(check-sat)
