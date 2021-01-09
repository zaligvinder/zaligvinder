(declare-const X String)
; ^\d{2}(\x2e)(\d{3})(-\d{3})?$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a")))))
; Host\x3A\s+Eyewww\x2Eccnnlc\x2EcomHost\x3aHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Eyewww.ccnnlc.com\x13Host:Host:\x0a")))))
; ^([1-9]\d{3}|0[1-9]\d{2}|00[1-9]\d{1}|000[1-9]{1})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "0") (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "00") (re.range "1" "9") ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to.re "000") ((_ re.loop 1 1) (re.range "1" "9")))) (str.to.re "\x0a")))))
; /\x3fsv\x3d\d{1,3}\x26tq\x3d/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/?sv=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "&tq=/smiU\x0a")))))
(check-sat)
