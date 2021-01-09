(declare-const X String)
; zopabora\x2Einfo\s+Inside.*User-Agent\x3A\s+SystemSleuthserverUser-Agent\x3a\x2Fnewsurfer4\x2FMicrosoft
(assert (not (str.in.re X (re.++ (str.to.re "zopabora.info") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Inside") (re.* re.allchar) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SystemSleuth\x13serverUser-Agent:/newsurfer4/Microsoft\x0a")))))
; Current[^\n\r]*server[^\n\r]*Host\x3Aocllceclbhs\x2fgth
(assert (str.in.re X (re.++ (str.to.re "Current") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "server") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:ocllceclbhs/gth\x0a"))))
; /filename=[^\n]*\x2evqf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vqf/i\x0a"))))
; ^(\d?)*\.?(\d{1}|\d{2})?$
(assert (not (str.in.re X (re.++ (re.* (re.opt (re.range "0" "9"))) (re.opt (str.to.re ".")) (re.opt (re.union ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
