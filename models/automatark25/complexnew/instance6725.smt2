(declare-const X String)
; /^Host\u{3a}[^\u{d}\u{a}]+\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\u{3a}\d{1,5}\u{d}?$/mi
(assert (not (str.in_re X (re.++ (str.to_re "/Host:") (re.+ (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ":") ((_ re.loop 1 5) (re.range "0" "9")) (re.opt (str.to_re "\u{d}")) (str.to_re "/mi\u{a}")))))
; ^<\!\-\-(.*)+(\/){0,1}\-\->$
(assert (str.in_re X (re.++ (str.to_re "<!--") (re.+ (re.* re.allchar)) (re.opt (str.to_re "/")) (str.to_re "-->\u{a}"))))
; ^\d[0-9]*[-/]\d[0-9]*$
(assert (not (str.in_re X (re.++ (re.range "0" "9") (re.* (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re "/")) (re.range "0" "9") (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
; /^\/load\.php\?spl=[^&]+&b=[^&]+&o=[^&]+&i=/U
(assert (str.in_re X (re.++ (str.to_re "//load.php?spl=") (re.+ (re.comp (str.to_re "&"))) (str.to_re "&b=") (re.+ (re.comp (str.to_re "&"))) (str.to_re "&o=") (re.+ (re.comp (str.to_re "&"))) (str.to_re "&i=/U\u{a}"))))
; Host\u{3A}Host\u{3A}X-Mailer\u{3a}
(assert (not (str.in_re X (str.to_re "Host:Host:X-Mailer:\u{13}\u{a}"))))
(check-sat)
