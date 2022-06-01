(declare-const X String)
; Box\d+GENERAL_PARAM2FTA-SpyLoggerHost\u{3A}\.exePass-On
(assert (not (str.in_re X (re.++ (str.to_re "Box") (re.+ (re.range "0" "9")) (str.to_re "GENERAL_PARAM2FTA-SpyLoggerHost:.exePass-On\u{a}")))))
; /filename=[^\n]*\u{2e}docm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".docm/i\u{a}"))))
(check-sat)
