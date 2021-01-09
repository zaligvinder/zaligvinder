(declare-const X String)
; ^(\w(([.-])*)(\s)?)+$
(assert (str.in.re X (re.++ (re.+ (re.++ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.* (re.union (str.to.re ".") (str.to.re "-"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "\x0a"))))
; ^(([a-zA-Z]{3})?([0-9]{4}))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.opt ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 4 4) (re.range "0" "9"))))))
; /[A-F0-9]{8}(-[A-F0-9]{4}){3}-[A-F0-9]{12}.wipe$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 8 8) (re.union (re.range "A" "F") (re.range "0" "9"))) ((_ re.loop 3 3) (re.++ (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "A" "F") (re.range "0" "9"))))) (str.to.re "-") ((_ re.loop 12 12) (re.union (re.range "A" "F") (re.range "0" "9"))) re.allchar (str.to.re "wipe/Ui\x0a")))))
; [\s]+
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
(check-sat)
