(declare-const X String)
; ^[0-9a-zA-z]{3}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "z"))) (str.to.re "\x0a")))))
; User-Agent\x3a\s+sErver\s+-~-GREATHost\x3a
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "sErver") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "-~-GREATHost:\x0a"))))
; ^(N[BLSTU]|[AMN]B|[BQ]C|ON|PE|SK)$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "N") (re.union (str.to.re "B") (str.to.re "L") (str.to.re "S") (str.to.re "T") (str.to.re "U"))) (re.++ (re.union (str.to.re "A") (str.to.re "M") (str.to.re "N")) (str.to.re "B")) (re.++ (re.union (str.to.re "B") (str.to.re "Q")) (str.to.re "C")) (str.to.re "ON") (str.to.re "PE") (str.to.re "SK")) (str.to.re "\x0a"))))
; /\x2emkv([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.mkv") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
