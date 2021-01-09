(declare-const X String)
; ^([1-9]|0[1-9]|1[0-2]):([0-5][0-9])$
(assert (not (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":\x0a") (re.range "0" "5") (re.range "0" "9")))))
; ^((0{1})?([0-3]{0,1}))(\.[0-9]{0,2})?$|^(4)(\.[0]{1,2})?$|^((0{1})?([0-4]{0,1}))(\.)?$
(assert (not (str.in.re X (re.union (re.++ (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9")))) (re.opt ((_ re.loop 1 1) (str.to.re "0"))) (re.opt (re.range "0" "3"))) (re.++ (str.to.re "4") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (str.to.re "0"))))) (re.++ (re.opt (str.to.re ".")) (str.to.re "\x0a") (re.opt ((_ re.loop 1 1) (str.to.re "0"))) (re.opt (re.range "0" "4")))))))
; (\w+([-+.']\w+)*@(gmail.com))
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (re.union (str.to.re "-") (str.to.re "+") (str.to.re ".") (str.to.re "'")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "@gmail") re.allchar (str.to.re "com"))))
; ^(((\+{1})|(0{2}))98|(0{1}))9[1-9]{1}\d{8}\Z$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union ((_ re.loop 1 1) (str.to.re "+")) ((_ re.loop 2 2) (str.to.re "0"))) (str.to.re "98")) ((_ re.loop 1 1) (str.to.re "0"))) (str.to.re "9") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
