(declare-const X String)
; \u{2E}aspxdata\.warezclient\.comWinCrashrunningUser-Agent\u{3A}wowokay
(assert (str.in_re X (str.to_re ".aspxdata.warezclient.comWinCrashrunningUser-Agent:wowokay\u{a}")))
; body=wordHost\u{3A}SpediartaddrEverywareHost\u{3A}Host\u{3A}
(assert (str.in_re X (str.to_re "body=wordHost:SpediartaddrEverywareHost:Host:\u{a}")))
; ^01[0-2]{1}[0-9]{8}
(assert (not (str.in_re X (re.++ (str.to_re "01") ((_ re.loop 1 1) (re.range "0" "2")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
