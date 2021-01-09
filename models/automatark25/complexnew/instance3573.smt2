(declare-const X String)
; ((^[0-9]*).?((BIS)|(TER)|(QUATER))?)?((\W+)|(^))(([a-z]+.)*)([0-9]{5})?.(([a-z\'']+.)*)$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.* (re.range "0" "9")) (re.opt re.allchar) (re.opt (re.union (str.to.re "BIS") (str.to.re "TER") (str.to.re "QUATER"))))) (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (re.* (re.++ (re.+ (re.range "a" "z")) re.allchar)) (re.opt ((_ re.loop 5 5) (re.range "0" "9"))) re.allchar (re.* (re.++ (re.+ (re.union (re.range "a" "z") (str.to.re "'"))) re.allchar)) (str.to.re "\x0a"))))
; ^\w+(([-+']|[-+.]|\w+))*@\w+([-.]\w+)*\.\w+([-.]\w+)*$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "-") (str.to.re "+") (str.to.re "'") (str.to.re "-") (str.to.re "+") (str.to.re "."))) (str.to.re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (re.union (str.to.re "-") (str.to.re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re ".") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (re.union (str.to.re "-") (str.to.re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "\x0a"))))
; as\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=.*X-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "as.starware.com/dp/search?x=") (re.* re.allchar) (str.to.re "X-Mailer:\x13\x0a"))))
; ^[^\"]+$
(assert (not (str.in.re X (re.++ (re.+ (re.comp (str.to.re "\x22"))) (str.to.re "\x0a")))))
(check-sat)
