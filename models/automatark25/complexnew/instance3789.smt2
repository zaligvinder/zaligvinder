(declare-const X String)
; ^(\([2-9]|[2-9])(\d{2}|\d{2}\))(-|.|\s)?\d{3}(-|.|\s)?\d{4}$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "(") (re.range "2" "9")) (re.range "2" "9")) (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ")"))) (re.opt (re.union (str.to.re "-") re.allchar (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") re.allchar (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\x2edmg([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.dmg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^(([0-9]{2,4})([-\s\/]{0,1})([0-9]{4,8}))?$
(assert (str.in.re X (re.++ (re.opt (re.++ ((_ re.loop 2 4) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re "/") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 8) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
