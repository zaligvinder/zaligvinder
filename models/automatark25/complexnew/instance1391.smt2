(declare-const X String)
; ^[0-9]{5}([- /]?[0-9]{4})?$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "/"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^\d{3}-\d{2}-\d{4}$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; http[s]?://(www.facebook|[a-zA-Z]{2}-[a-zA-Z]{2}.facebook|facebook)\.com/(events/[0-9]+|[a-zA-Z0-9\.-]+)[/]?$
(assert (not (str.in.re X (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://") (re.union (re.++ (str.to.re "www") re.allchar (str.to.re "facebook")) (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "-") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) re.allchar (str.to.re "facebook")) (str.to.re "facebook")) (str.to.re ".com/") (re.union (re.++ (str.to.re "events/") (re.+ (re.range "0" "9"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "-")))) (re.opt (str.to.re "/")) (str.to.re "\x0a")))))
; ^(\+27|27|0)[0-9]{2}( |-)?[0-9]{3}( |-)?[0-9]{4}( |-)?(x[0-9]+)?(ext[0-9]+)?
(assert (str.in.re X (re.++ (re.union (str.to.re "+27") (str.to.re "27") (str.to.re "0")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) (re.opt (re.++ (str.to.re "x") (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to.re "ext") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; \d+,?\d+\$?
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to.re ",")) (re.+ (re.range "0" "9")) (re.opt (str.to.re "$")) (str.to.re "\x0a"))))
(check-sat)
