(declare-const X String)
; \u{2E}aspxdata\.warezclient\.comWinCrashrunningUser-Agent\u{3A}wowokay
(assert (str.in_re X (str.to_re ".aspxdata.warezclient.comWinCrashrunningUser-Agent:wowokay\u{a}")))
; ^.{2,}$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 2 2) re.allchar) (re.* re.allchar)))))
; /filename=[^\n]*\u{2e}s3m/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".s3m/i\u{a}")))))
(check-sat)
