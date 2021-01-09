(declare-const X String)
; ^([A-Z]{1,2}[0-9]{1,2}|[A-Z]{3}|[A-Z]{1,2}[0-9][A-Z])( |-)[0-9][A-Z]{2}
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) ((_ re.loop 1 2) (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "A" "Z")) (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.range "0" "9") (re.range "A" "Z"))) (re.union (str.to.re " ") (str.to.re "-")) (re.range "0" "9") ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "\x0a")))))
; ^A-?|[BCD][+-]?|[SN]?F|W$
(assert (not (str.in.re X (re.union (re.++ (str.to.re "A") (re.opt (str.to.re "-"))) (re.++ (re.union (str.to.re "B") (str.to.re "C") (str.to.re "D")) (re.opt (re.union (str.to.re "+") (str.to.re "-")))) (re.++ (re.opt (re.union (str.to.re "S") (str.to.re "N"))) (str.to.re "F")) (str.to.re "W\x0a")))))
; zmnjgmomgbdz\x2fzzmw\.gzt\d+Ready
(assert (not (str.in.re X (re.++ (str.to.re "zmnjgmomgbdz/zzmw.gzt") (re.+ (re.range "0" "9")) (str.to.re "Ready\x0a")))))
; ^\d+(\.\d+)?$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; fhfksjzsfu\x2fahm\.uqs\s+Host\x3a\swww\.fast-finder\.com\sStarted\!$3
(assert (str.in.re X (re.++ (str.to.re "fhfksjzsfu/ahm.uqs") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Started!3\x0a"))))
(check-sat)
