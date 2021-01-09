(declare-const X String)
; Box\d+GENERAL_PARAM2FTA-SpyLoggerHost\x3A\.exePass-On
(assert (str.in.re X (re.++ (str.to.re "Box") (re.+ (re.range "0" "9")) (str.to.re "GENERAL_PARAM2FTA-SpyLoggerHost:.exePass-On\x0a"))))
(check-sat)
