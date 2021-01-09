(declare-const X String)
; ^([0-2]\d|3[0-1]|[1-9])\/(0\d|1[0-2]|[1-9])\/(\d{4})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1")) (re.range "1" "9")) (str.to.re "/") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "2")) (re.range "1" "9")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; [\w!#$%&&apos;*+./=?`{|}~^-]+@[\d.A-Za-z-]+
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "!") (str.to.re "#") (str.to.re "$") (str.to.re "%") (str.to.re "&") (str.to.re "a") (str.to.re "p") (str.to.re "o") (str.to.re "s") (str.to.re ";") (str.to.re "*") (str.to.re "+") (str.to.re ".") (str.to.re "/") (str.to.re "=") (str.to.re "?") (str.to.re "`") (str.to.re "{") (str.to.re "|") (str.to.re "}") (str.to.re "~") (str.to.re "^") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (re.range "0" "9") (str.to.re ".") (re.range "A" "Z") (re.range "a" "z") (str.to.re "-"))) (str.to.re "\x0a"))))
(check-sat)
