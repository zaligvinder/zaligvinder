(declare-const X String)
; \x2Easpxdata\.warezclient\.comWinCrashrunningUser-Agent\x3Awowokay
(assert (str.in.re X (str.to.re ".aspxdata.warezclient.comWinCrashrunningUser-Agent:wowokay\x0a")))
; body=wordHost\x3ASpediartaddrEverywareHost\x3AHost\x3A
(assert (str.in.re X (str.to.re "body=wordHost:SpediartaddrEverywareHost:Host:\x0a")))
; ^01[0-2]{1}[0-9]{8}
(assert (not (str.in.re X (re.++ (str.to.re "01") ((_ re.loop 1 1) (re.range "0" "2")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
