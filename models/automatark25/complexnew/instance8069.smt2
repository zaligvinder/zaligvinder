(declare-const X String)
; ^(\d{3}|\d{4})[-](\d{5})$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^\$?(\d{1,3}(\,\d{3})*|(\d+))(\.\d{0,2})?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; \b[1-9]{1}[0-9]{1,5}-\d{2}-\d\b
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") (re.range "0" "9") (str.to.re "\x0a")))))
; http\s+Host\x3A[^\n\r]*WinInet3Azopabora\x2Einfo\x2Fnotifier\x2FUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "http") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "WinInet3Azopabora.info/notifier/User-Agent:\x0a")))))
(check-sat)
