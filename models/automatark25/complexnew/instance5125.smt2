(declare-const X String)
; ^[ABCGHJMPQRTWXYZ]$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "A") (str.to.re "B") (str.to.re "C") (str.to.re "G") (str.to.re "H") (str.to.re "J") (str.to.re "M") (str.to.re "P") (str.to.re "Q") (str.to.re "R") (str.to.re "T") (str.to.re "W") (str.to.re "X") (str.to.re "Y") (str.to.re "Z")) (str.to.re "\x0a")))))
; ^([A-Z]{2}[9]{3}|[A-Z]{3}[9]{2}|[A-Z]{4}[9]{1}|[A-Z]{5})[0-9]{6}([A-Z]{1}[9]{1}|[A-Z]{2})[A-Z0,9]{3}$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) ((_ re.loop 3 3) (str.to.re "9"))) (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) ((_ re.loop 2 2) (str.to.re "9"))) (re.++ ((_ re.loop 4 4) (re.range "A" "Z")) ((_ re.loop 1 1) (str.to.re "9"))) ((_ re.loop 5 5) (re.range "A" "Z"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.union (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (str.to.re "9"))) ((_ re.loop 2 2) (re.range "A" "Z"))) ((_ re.loop 3 3) (re.union (re.range "A" "Z") (str.to.re "0") (str.to.re ",") (str.to.re "9"))) (str.to.re "\x0a")))))
; /\x2ehtc([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.htc") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; zmnjgmomgbdz\x2fzzmw\.gzt\d+Ready
(assert (not (str.in.re X (re.++ (str.to.re "zmnjgmomgbdz/zzmw.gzt") (re.+ (re.range "0" "9")) (str.to.re "Ready\x0a")))))
; /\x2eflv([\?\x5c\x2f]|$)/Umsi
(assert (not (str.in.re X (re.++ (str.to.re "/.flv") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/Umsi\x0a")))))
(check-sat)
