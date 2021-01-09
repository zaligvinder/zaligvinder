(declare-const X String)
; ^([a-zA-Z.\s']{1,50})$
(assert (str.in.re X (re.++ ((_ re.loop 1 50) (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re ".") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2esmi/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".smi/i\x0a"))))
; ((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.++ (str.to.re "25") (re.range "0" "5")) (re.++ (re.opt (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ (re.opt (str.to.re "1")) (re.range "0" "9")))) (re.range "0" "9"))) (str.to.re "."))) (re.union (re.++ (str.to.re "25") (re.range "0" "5")) (re.++ (re.opt (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ (re.opt (str.to.re "1")) (re.range "0" "9")))) (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^([a-zA-z]:((\\([-*\.*\w+\s+\d+]+)|(\w+)\\)+)(\w+.zip)|(\w+.ZIP))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "z")) (str.to.re ":") (re.+ (re.union (re.++ (str.to.re "\x5c") (re.+ (re.union (str.to.re "-") (str.to.re "*") (str.to.re ".") (str.to.re "+") (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x5c")))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) re.allchar (str.to.re "zip")) (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) re.allchar (str.to.re "ZIP"))) (str.to.re "\x0a")))))
(check-sat)
