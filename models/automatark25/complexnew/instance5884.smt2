(declare-const X String)
; (^\-?[0-9]*\.?[0-9]+$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.+ (re.range "0" "9"))))))
; /filename=[^\n]*\x2esum/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".sum/i\x0a"))))
; Box\d+GENERAL_PARAM2FTA-SpyLoggerHost\x3A\.exePass-On
(assert (not (str.in.re X (re.++ (str.to.re "Box") (re.+ (re.range "0" "9")) (str.to.re "GENERAL_PARAM2FTA-SpyLoggerHost:.exePass-On\x0a")))))
; /Referer\x3a[^\n]*fla\.php\?wq=[a-f0-9]+\x0d\x0a/H
(assert (not (str.in.re X (re.++ (str.to.re "/Referer:") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re "fla.php?wq=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "\x0d\x0a/H\x0a")))))
(check-sat)
