(declare-const X String)
; ^(N[BLSTU]|[AMN]B|[BQ]C|ON|PE|SK)$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "N") (re.union (str.to.re "B") (str.to.re "L") (str.to.re "S") (str.to.re "T") (str.to.re "U"))) (re.++ (re.union (str.to.re "A") (str.to.re "M") (str.to.re "N")) (str.to.re "B")) (re.++ (re.union (str.to.re "B") (str.to.re "Q")) (str.to.re "C")) (str.to.re "ON") (str.to.re "PE") (str.to.re "SK")) (str.to.re "\x0a"))))
; /listoverridecount([2345678]|[019][0-9])/i
(assert (str.in.re X (re.++ (str.to.re "/listoverridecount") (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1") (str.to.re "9")) (re.range "0" "9")) (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8")) (str.to.re "/i\x0a"))))
; ^\<(\w){1,}\>(.){0,}([\</]|[\<])(\w){1,}\>$
(assert (str.in.re X (re.++ (str.to.re "<") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ">") (re.* re.allchar) (re.union (str.to.re "<") (str.to.re "/")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ">\x0a"))))
; Host\x3Ahirmvtg\x2fggqh\.kqhverA-Spy
(assert (str.in.re X (str.to.re "Host:hirmvtg/ggqh.kqh\x1bverA-Spy\x0a")))
(check-sat)
