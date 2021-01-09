(declare-const X String)
; st=\s+www\.iggsey\.com.*BackAtTaCkadserver\.warezclient\.com
(assert (str.in.re X (re.++ (str.to.re "st=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.iggsey.com") (re.* re.allchar) (str.to.re "BackAtTaCkadserver.warezclient.com\x0a"))))
; Box\d+GENERAL_PARAM2FTA-SpyLoggerHost\x3A\.exePass-On
(assert (str.in.re X (re.++ (str.to.re "Box") (re.+ (re.range "0" "9")) (str.to.re "GENERAL_PARAM2FTA-SpyLoggerHost:.exePass-On\x0a"))))
(check-sat)
