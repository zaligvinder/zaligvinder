(declare-const X String)
; ^\d*\d?((5)|(0))\.?((0)|(00))?$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.union (str.to.re "5") (str.to.re "0")) (re.opt (str.to.re ".")) (re.opt (re.union (str.to.re "0") (str.to.re "00"))) (str.to.re "\x0a"))))
; ^\s*-?(\d*\.)?([0-2])?[0-9]:([0-5])?[0-9]:([0-5])?[0-9](\.[0-9]{1,7})?\s*$
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.opt (re.++ (re.* (re.range "0" "9")) (str.to.re "."))) (re.opt (re.range "0" "2")) (re.range "0" "9") (str.to.re ":") (re.opt (re.range "0" "5")) (re.range "0" "9") (str.to.re ":") (re.opt (re.range "0" "5")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 7) (re.range "0" "9")))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; ((\(\d{3,4}\)|\d{3,4}-)\d{4,9}(-\d{1,5}|\d{0}))|(\d{4,12})
(assert (str.in.re X (re.union (re.++ (re.union (re.++ (str.to.re "(") ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re ")")) (re.++ ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re "-"))) ((_ re.loop 4 9) (re.range "0" "9")) (re.union (re.++ (str.to.re "-") ((_ re.loop 1 5) (re.range "0" "9"))) ((_ re.loop 0 0) (re.range "0" "9")))) (re.++ ((_ re.loop 4 12) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\x3fsv\x3d\d{1,3}\x26tq\x3d/smiU
(assert (str.in.re X (re.++ (str.to.re "/?sv=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "&tq=/smiU\x0a"))))
(check-sat)
