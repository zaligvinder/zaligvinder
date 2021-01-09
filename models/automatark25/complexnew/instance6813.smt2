(declare-const X String)
; /^"|'+(.*)+"$|'$/
(assert (not (str.in.re X (re.union (str.to.re "/\x22") (re.++ (re.+ (str.to.re "'")) (re.+ (re.* re.allchar)) (str.to.re "\x22")) (str.to.re "'/\x0a")))))
; ^\.([rR]([aA][rR]|\d{2})|(\d{3})?)$
(assert (not (str.in.re X (re.++ (str.to.re ".") (re.union (re.++ (re.union (str.to.re "r") (str.to.re "R")) (re.union (re.++ (re.union (str.to.re "a") (str.to.re "A")) (re.union (str.to.re "r") (str.to.re "R"))) ((_ re.loop 2 2) (re.range "0" "9")))) (re.opt ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a")))))
; (^.+\|+[A-Za-z])
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.+ re.allchar) (re.+ (str.to.re "|")) (re.union (re.range "A" "Z") (re.range "a" "z")))))
(check-sat)
