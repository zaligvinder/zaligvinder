(declare-const X String)
; ^(((0[0-9])|(1[0-9])|(2[0-3])):[0-5][0-9])$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9")))))
; /\x2ermp([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.rmp") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^(((20)((0[0-9])|(1[0-1])))|(([1][^0-8])?\d{2}))((0[1-9])|1[0-2])((0[1-9])|(2[0-9])|(3[01]))[-]?\d{4}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "20") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "1")))) (re.++ (re.opt (re.++ (str.to.re "1") (re.range "0" "8"))) ((_ re.loop 2 2) (re.range "0" "9")))) (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^\d{5}(-\d{3})?$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
