(declare-const X String)
; ';([dmstrl])([ .,?!\)\\/<])
(assert (str.in.re X (re.++ (str.to.re "';") (re.union (str.to.re "d") (str.to.re "m") (str.to.re "s") (str.to.re "t") (str.to.re "r") (str.to.re "l")) (re.union (str.to.re " ") (str.to.re ".") (str.to.re ",") (str.to.re "?") (str.to.re "!") (str.to.re ")") (str.to.re "\x5c") (str.to.re "/") (str.to.re "<")) (str.to.re "\x0a"))))
; ^(([0-9]{5})|([0-9]{3}[ ]{0,1}[0-9]{2}))$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 5 5) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^(-?)(,?)(\d{1,3}(\.\d{3})*|(\d+))(\,\d{2})?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.opt (str.to.re ",")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to.re ",") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
