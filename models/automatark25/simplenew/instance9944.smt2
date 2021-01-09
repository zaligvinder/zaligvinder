(declare-const X String)
; ^([A-Z0-9?.+-])+([,]([A-Z0-9?.+-])+)*$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "?") (str.to.re ".") (str.to.re "+") (str.to.re "-"))) (re.* (re.++ (str.to.re ",") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "?") (str.to.re ".") (str.to.re "+") (str.to.re "-"))))) (str.to.re "\x0a")))))
(check-sat)
