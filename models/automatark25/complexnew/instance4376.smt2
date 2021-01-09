(declare-const X String)
; ^([A-Za-z0-9]\s?)+([,]\s?([A-Za-z0-9]\s?)+)*$
(assert (not (str.in.re X (re.++ (re.+ (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (re.* (re.++ (str.to.re ",") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))) (str.to.re "\x0a")))))
; ^([1-9]+)?[02468]$
(assert (str.in.re X (re.++ (re.opt (re.+ (re.range "1" "9"))) (re.union (str.to.re "0") (str.to.re "2") (str.to.re "4") (str.to.re "6") (str.to.re "8")) (str.to.re "\x0a"))))
(check-sat)
