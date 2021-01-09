(declare-const X String)
; ^[A-Z]\d{2}(\.\d){0,1}$
(assert (not (str.in.re X (re.++ (re.range "A" "Z") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9"))) (str.to.re "\x0a")))))
; ^(100([\.\,]0{1,2})?)|(\d{1,2}[\.\,]\d{1,2})|(\d{0,2})$
(assert (str.in.re X (re.union (re.++ (str.to.re "100") (re.opt (re.++ (re.union (str.to.re ".") (str.to.re ",")) ((_ re.loop 1 2) (str.to.re "0"))))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.union (str.to.re ".") (str.to.re ",")) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2egif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".gif/i\x0a"))))
; Host\x3A\dMicrosoft\w+\+Version\+
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "Microsoft") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "+Version+\x0a"))))
(check-sat)
