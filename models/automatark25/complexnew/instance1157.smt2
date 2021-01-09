(declare-const X String)
; ^(([a-z])+.)+[A-Z]([a-z])+$
(assert (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.range "a" "z")) re.allchar)) (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a"))))
; ^([1-9]|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])$
(assert (not (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to.re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re "\x0a")))))
; ^[a-zA-Z]{1,3}\[([0-9]{1,3})\]
(assert (not (str.in.re X (re.++ ((_ re.loop 1 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "[") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "]\x0a")))))
; zmnjgmomgbdz\x2fzzmw\.gzt\d+Ready
(assert (not (str.in.re X (re.++ (str.to.re "zmnjgmomgbdz/zzmw.gzt") (re.+ (re.range "0" "9")) (str.to.re "Ready\x0a")))))
; /\x2epict([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.pict") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
