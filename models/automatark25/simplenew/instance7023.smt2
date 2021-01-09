(declare-const X String)
; \x2Easpxdata\.warezclient\.comWinCrashrunningUser-Agent\x3Awowokay
(assert (str.in.re X (str.to.re ".aspxdata.warezclient.comWinCrashrunningUser-Agent:wowokay\x0a")))
(check-sat)
