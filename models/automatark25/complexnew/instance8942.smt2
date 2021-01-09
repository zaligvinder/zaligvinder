(declare-const X String)
; ^(\$)?(\s)?(\-)?((\d+)|(\d{1,3})(\,\d{3})*)(\.\d{2,})?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.union (re.+ (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")) (re.* (re.range "0" "9")))) (str.to.re "\x0a"))))
; /Host\x3a[^\n]+\x3a\d+\x0d\x0a/
(assert (not (str.in.re X (re.++ (str.to.re "/Host:") (re.+ (re.comp (str.to.re "\x0a"))) (str.to.re ":") (re.+ (re.range "0" "9")) (str.to.re "\x0d\x0a/\x0a")))))
; \x2Easpxdata\.warezclient\.comWinCrashrunningUser-Agent\x3Awowokay
(assert (str.in.re X (str.to.re ".aspxdata.warezclient.comWinCrashrunningUser-Agent:wowokay\x0a")))
(check-sat)
