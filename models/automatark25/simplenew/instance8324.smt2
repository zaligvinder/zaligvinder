(declare-const X String)
; \u{2E}aspxdata\.warezclient\.comWinCrashrunningUser-Agent\u{3A}wowokay
(assert (not (str.in_re X (str.to_re ".aspxdata.warezclient.comWinCrashrunningUser-Agent:wowokay\u{a}"))))
(check-sat)
