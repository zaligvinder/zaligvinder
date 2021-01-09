(declare-const X String)
; ^(1[0-2]|0?[1-9]):([0-5]?[0-9])( AM| PM)$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (str.to.re ":\x0a") (re.opt (re.range "0" "5")) (re.range "0" "9") (str.to.re " ") (re.union (str.to.re "AM") (str.to.re "PM")))))
; ^((\(0?[1-9][0-9]\))|(0?[1-9][0-9]))[ -.]?([1-9][0-9]{3})[ -.]?([0-9]{4})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "(") (re.opt (str.to.re "0")) (re.range "1" "9") (re.range "0" "9") (str.to.re ")")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9") (re.range "0" "9"))) (re.opt (re.range " " ".")) (re.opt (re.range " " ".")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a") (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9"))))))
; /\x2ewps([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.wps") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
