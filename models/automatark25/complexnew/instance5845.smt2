(declare-const X String)
; Box\d+GENERAL_PARAM2FTA-SpyLoggerHost\x3A\.exePass-On
(assert (not (str.in.re X (re.++ (str.to.re "Box") (re.+ (re.range "0" "9")) (str.to.re "GENERAL_PARAM2FTA-SpyLoggerHost:.exePass-On\x0a")))))
; /filename=[^\n]*\x2edocm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".docm/i\x0a"))))
(check-sat)
