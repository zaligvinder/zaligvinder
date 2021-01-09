(declare-const X String)
; ((^([\d]{1,3})(,{1}([\d]{3}))*)|(^[\d]*))((\.{1}[\d]{2})?$)
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ ((_ re.loop 1 1) (str.to.re ",")) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.* (re.range "0" "9"))) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^((0?[1-9])|((1|2)[0-9])|30|31)$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (str.to.re "30") (str.to.re "31")) (str.to.re "\x0a"))))
; (AUX|PRN|NUL|COM\d|LPT\d)+\s*$
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "AUX") (str.to.re "PRN") (str.to.re "NUL") (re.++ (str.to.re "COM") (re.range "0" "9")) (re.++ (str.to.re "LPT") (re.range "0" "9")))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
(check-sat)
