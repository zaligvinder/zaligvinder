(declare-const X String)
; /^Host\x3a[^\x0d\x0a]+\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\x3a\d{1,5}\x0d?$/mi
(assert (not (str.in.re X (re.++ (str.to.re "/Host:") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ":") ((_ re.loop 1 5) (re.range "0" "9")) (re.opt (str.to.re "\x0d")) (str.to.re "/mi\x0a")))))
; ^<\!\-\-(.*)+(\/){0,1}\-\->$
(assert (str.in.re X (re.++ (str.to.re "<!--") (re.+ (re.* re.allchar)) (re.opt (str.to.re "/")) (str.to.re "-->\x0a"))))
; ^\d[0-9]*[-/]\d[0-9]*$
(assert (not (str.in.re X (re.++ (re.range "0" "9") (re.* (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re "/")) (re.range "0" "9") (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; /^\/load\.php\?spl=[^&]+&b=[^&]+&o=[^&]+&i=/U
(assert (str.in.re X (re.++ (str.to.re "//load.php?spl=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&b=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&o=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&i=/U\x0a"))))
; Host\x3AHost\x3AX-Mailer\x3a
(assert (not (str.in.re X (str.to.re "Host:Host:X-Mailer:\x13\x0a"))))
(check-sat)
