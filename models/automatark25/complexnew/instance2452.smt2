(declare-const X String)
; /^\x2f\x3fptrxcz\x5f[a-zA-Z0-9]{30}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//?ptrxcz_") ((_ re.loop 30 30) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/Ui\x0a")))))
; ^[A-PR-UWYZ]([0-9]([A-HJKSTUW]|[0-9])?|[A-HK-Y][0-9]([ABEHMNPRVWXY]|[0-9])) [0-9][ABD-HJLNP-UW-Z]{2}|GIR 0AA$
(assert (str.in.re X (re.union (re.++ (re.union (re.range "A" "P") (re.range "R" "U") (str.to.re "W") (str.to.re "Y") (str.to.re "Z")) (re.union (re.++ (re.range "0" "9") (re.opt (re.union (re.range "A" "H") (str.to.re "J") (str.to.re "K") (str.to.re "S") (str.to.re "T") (str.to.re "U") (str.to.re "W") (re.range "0" "9")))) (re.++ (re.union (re.range "A" "H") (re.range "K" "Y")) (re.range "0" "9") (re.union (str.to.re "A") (str.to.re "B") (str.to.re "E") (str.to.re "H") (str.to.re "M") (str.to.re "N") (str.to.re "P") (str.to.re "R") (str.to.re "V") (str.to.re "W") (str.to.re "X") (str.to.re "Y") (re.range "0" "9")))) (str.to.re " ") (re.range "0" "9") ((_ re.loop 2 2) (re.union (str.to.re "A") (str.to.re "B") (re.range "D" "H") (str.to.re "J") (str.to.re "L") (str.to.re "N") (re.range "P" "U") (re.range "W" "Z")))) (str.to.re "GIR 0AA\x0a"))))
; [A-Z][a-zA-Z]+ [A-Z][a-zA-Z]+
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re " ") (re.range "A" "Z") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2eani/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ani/i\x0a")))))
(check-sat)
