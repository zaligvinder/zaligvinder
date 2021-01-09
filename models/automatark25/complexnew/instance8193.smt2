(declare-const X String)
; ^[^']*$
(assert (str.in.re X (re.++ (re.* (re.comp (str.to.re "'"))) (str.to.re "\x0a"))))
; ^(([0-9]|1[0-9]|2[0-4])(\.[0-9][0-9]?)?)$|([2][5](\.[0][0]?)?)$
(assert (str.in.re X (re.union (re.++ (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4"))) (re.opt (re.++ (str.to.re ".") (re.range "0" "9") (re.opt (re.range "0" "9"))))) (re.++ (str.to.re "\x0a25") (re.opt (re.++ (str.to.re ".0") (re.opt (str.to.re "0"))))))))
; ^([1-9]|[1-9]\d|100)$
(assert (not (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (str.to.re "100")) (str.to.re "\x0a")))))
; <(\/{0,1})img(.*?)(\/{0,1})\>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.opt (str.to.re "/")) (str.to.re "img") (re.* re.allchar) (re.opt (str.to.re "/")) (str.to.re ">\x0a")))))
(check-sat)
