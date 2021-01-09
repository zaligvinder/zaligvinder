(declare-const X String)
; ^(\d{5}-\d{4}|\d{5})$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9"))) (str.to.re "\x0a")))))
; Logs.*with\x3A\s+OnlineServer\x3aYeah\!
(assert (not (str.in.re X (re.++ (str.to.re "Logs") (re.* re.allchar) (str.to.re "with:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "OnlineServer:Yeah!\x0a")))))
; ^([a-zA-Z0-9]{1,15})$
(assert (str.in.re X (re.++ ((_ re.loop 1 15) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
