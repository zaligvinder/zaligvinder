(declare-const X String)
; Box\d+GENERAL_PARAM2FTA-SpyLoggerHost\x3A\.exePass-On
(assert (str.in.re X (re.++ (str.to.re "Box") (re.+ (re.range "0" "9")) (str.to.re "GENERAL_PARAM2FTA-SpyLoggerHost:.exePass-On\x0a"))))
; /^\/\?[a-f0-9]{32}$/U
(assert (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
; \x7D\x7BTrojan\x3AUser-Agent\x3AbyHost\x3A\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1
(assert (not (str.in.re X (str.to.re "}{Trojan:User-Agent:byHost:\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1\x0a"))))
; URL\s+\.cfgmPOPrtCUSTOMPalToolbarUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "URL") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ".cfgmPOPrtCUSTOMPalToolbarUser-Agent:\x0a"))))
(check-sat)
