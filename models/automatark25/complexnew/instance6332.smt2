(declare-const X String)
; ^[AaWaKkNn][a-zA-Z]?[0-9][a-zA-Z]{1,3}$
(assert (str.in.re X (re.++ (re.union (str.to.re "A") (str.to.re "a") (str.to.re "W") (str.to.re "K") (str.to.re "k") (str.to.re "N") (str.to.re "n")) (re.opt (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.range "0" "9") ((_ re.loop 1 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; ^(([+]31|0031)\s\(0\)([0-9]{9})|([+]31|0031)\s0([0-9]{9})|0([0-9]{9}))$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "+31") (str.to.re "0031")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "(0)") ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (re.union (str.to.re "+31") (str.to.re "0031")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "0") ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to.re "0") ((_ re.loop 9 9) (re.range "0" "9")))) (str.to.re "\x0a"))))
; (.*)-----(BEGIN|END)([^-]*)-----(.*)
(assert (str.in.re X (re.++ (re.* re.allchar) (str.to.re "-----") (re.union (str.to.re "BEGIN") (str.to.re "END")) (re.* (re.comp (str.to.re "-"))) (str.to.re "-----") (re.* re.allchar) (str.to.re "\x0a"))))
; e(vi?)?
(assert (str.in.re X (re.++ (str.to.re "e") (re.opt (re.++ (str.to.re "v") (re.opt (str.to.re "i")))) (str.to.re "\x0a"))))
; ContactHost\x3aHost\x3AFloodedFictionalUser-Agent\x3AHost\x3a
(assert (str.in.re X (str.to.re "ContactHost:Host:FloodedFictionalUser-Agent:Host:\x0a")))
(check-sat)
