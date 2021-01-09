(declare-const X String)
; Agentppcdomain\x2Eco\x2EukWordSpy\-Locked
(assert (not (str.in.re X (str.to.re "Agentppcdomain.co.ukWordSpy-Locked\x0a"))))
; /\x2efli([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.fli") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^\w+(([-+']|[-+.]|\w+))*@\w+([-.]\w+)*\.\w+([-.]\w+)*$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "-") (str.to.re "+") (str.to.re "'") (str.to.re "-") (str.to.re "+") (str.to.re "."))) (str.to.re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (re.union (str.to.re "-") (str.to.re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re ".") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (re.union (str.to.re "-") (str.to.re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "\x0a"))))
; ^[0-9]{5}([- /]?[0-9]{4})?$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "/"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
; /^\x2f[0-9a-z]{30}$/Umi
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 30 30) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "/Umi\x0a")))))
(check-sat)
