(declare-const X String)
; [\d+]{10}\@[\w]+\.?[\w]+?\.?[\w]+?\.?[\w+]{2,4}/i
(assert (str.in.re X (re.++ ((_ re.loop 10 10) (re.union (re.range "0" "9") (str.to.re "+"))) (str.to.re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (str.to.re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (str.to.re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (str.to.re ".")) ((_ re.loop 2 4) (re.union (str.to.re "+") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/i\x0a"))))
; <title>(.*?)</title>
(assert (not (str.in.re X (re.++ (str.to.re "<title>") (re.* re.allchar) (str.to.re "</title>\x0a")))))
(check-sat)
