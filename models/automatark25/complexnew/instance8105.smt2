(declare-const X String)
; ^[A-Za-z0-9_]+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "_"))) (str.to.re "\x0a"))))
; hirmvtg\x2fggqh\.kqh\d+sports\w+whenu\x2Ecomwp-includes\x2Ffeed\x2Ephp\x3F
(assert (str.in.re X (re.++ (str.to.re "hirmvtg/ggqh.kqh\x1b") (re.+ (re.range "0" "9")) (str.to.re "sports") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "whenu.com\x13wp-includes/feed.php?\x0a"))))
; ^((0?[1-9])|((1)[0-1]))?((\.[0-9]{0,2})?|0(\.[0-9]{0,2}))$
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "1")))) (re.union (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9")))) (re.++ (str.to.re "0.") ((_ re.loop 0 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^([0-9A-F]{2}[:-]){5}([0-9A-F]{2})$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.union (str.to.re ":") (str.to.re "-")))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "\x0a")))))
; ^[AaWaKkNn][a-zA-Z]?[0-9][a-zA-Z]{1,3}$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "A") (str.to.re "a") (str.to.re "W") (str.to.re "K") (str.to.re "k") (str.to.re "N") (str.to.re "n")) (re.opt (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.range "0" "9") ((_ re.loop 1 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
(check-sat)
