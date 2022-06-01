(declare-const X String)
; UI2ftpquickbrutehttp\u{3A}\u{2F}\u{2F}discounts\u{2E}shopathome\u{2E}com\u{2F}frameset\u{2E}asp\?
(assert (not (str.in_re X (str.to_re "UI2ftpquickbrutehttp://discounts.shopathome.com/frameset.asp?\u{a}"))))
; \u{2E}aspxdata\.warezclient\.comWinCrashrunningUser-Agent\u{3A}wowokay
(assert (str.in_re X (str.to_re ".aspxdata.warezclient.comWinCrashrunningUser-Agent:wowokay\u{a}")))
; ^[a-zA-Z0-9][a-zA-Z0-9-_.]{2,8}[a-zA-Z0-9]$
(assert (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 2 8) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re "_") (str.to_re "."))) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
