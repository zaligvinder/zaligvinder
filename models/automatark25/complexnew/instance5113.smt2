(declare-const X String)
; ^(Function|Sub)(\s+[\w]+)\([^\(\)]*\)
(assert (str.in.re X (re.++ (re.union (str.to.re "Function") (str.to.re "Sub")) (str.to.re "(") (re.* (re.union (str.to.re "(") (str.to.re ")"))) (str.to.re ")\x0a") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))))
; ^[A-Z]{3}(\d|[A-Z]){8,12}$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) ((_ re.loop 8 12) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; ^[B|K|T|P][A-Z][0-9]{4}$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "B") (str.to.re "|") (str.to.re "K") (str.to.re "T") (str.to.re "P")) (re.range "A" "Z") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^\s+|\s+$
(assert (not (str.in.re X (re.union (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))))
(check-sat)
