(declare-const X String)
; ^\d{1,3}\.\d{1,4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^[A-Za-z]{1,2}[0-9A-Za-z]{1,2}[ ]?[0-9]{0,1}[A-Za-z]{2}$
(assert (str.in.re X (re.++ ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to.re " ")) (re.opt (re.range "0" "9")) ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a"))))
; ^\d*[1-9]\d*$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.range "1" "9") (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; ([0-9a-z_-]+[\.][0-9a-z_-]{1,3})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (str.to.re "_") (str.to.re "-"))) (str.to.re ".") ((_ re.loop 1 3) (re.union (re.range "0" "9") (re.range "a" "z") (str.to.re "_") (str.to.re "-"))))))
(check-sat)
