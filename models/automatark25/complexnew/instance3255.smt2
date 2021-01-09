(declare-const X String)
; ^(-|\+)?(((100|((0|[1-9]{1,2})(\.[0-9]+)?)))|(\.[0-9]+))%?$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.union (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))) (str.to.re "100") (re.++ (re.union (str.to.re "0") ((_ re.loop 1 2) (re.range "1" "9"))) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))))) (re.opt (str.to.re "%")) (str.to.re "\x0a"))))
; ^((0?[1-9]|1[012])(:[0-5]\d){1,2}(\ [AaPp][Mm]))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) ((_ re.loop 1 2) (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to.re " ") (re.union (str.to.re "A") (str.to.re "a") (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "M") (str.to.re "m"))))))
; /\/loader\.cpl$/U
(assert (not (str.in.re X (str.to.re "//loader.cpl/U\x0a"))))
; User-Agent\x3A\s+\x2APORT3\x2A\d+
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "*PORT3*") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; /^([a-zA-Z0-9\.\_\-\&]+)@[a-zA-Z0-9]+\.[a-zA-Z]{3}|(.[a-zA-Z]{2}(\.[a-zA-Z]{2}))$/
(assert (not (str.in.re X (re.union (re.++ (str.to.re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "-") (str.to.re "&"))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ (str.to.re "/\x0a") re.allchar ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re ".") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))))))))
(check-sat)
