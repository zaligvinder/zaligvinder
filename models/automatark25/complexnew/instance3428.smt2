(declare-const X String)
; ^(0?\d|1[012])\/([012]?\d|3[01])\/(\d{2}|\d{4})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "0" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) (str.to.re "/") (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2"))) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "/") (re.union ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "\x0a")))))
; Uin=encodernotification\x2Ftoolbar\x2FHost\x3AUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "Uin=encodernotification\x13/toolbar/Host:User-Agent:\x0a"))))
; Last.*?(\d+.?\d*)
(assert (str.in.re X (re.++ (str.to.re "Last") (re.* re.allchar) (str.to.re "\x0a") (re.+ (re.range "0" "9")) (re.opt re.allchar) (re.* (re.range "0" "9")))))
; ^([0-9a-fA-F]{1,2})(\s[0-9a-fA-F]{1,2})*$
(assert (str.in.re X (re.++ ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.* (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))) (str.to.re "\x0a"))))
(check-sat)
