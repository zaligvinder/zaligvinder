(declare-const X String)
; ^([a-zA-Z,#/ \.\(\)\-\+\*]*[0-9]){7}[0-9a-zA-Z,#/ \.\(\)\-\+\*]*$
(assert (not (str.in.re X (re.++ ((_ re.loop 7 7) (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re ",") (str.to.re "#") (str.to.re "/") (str.to.re " ") (str.to.re ".") (str.to.re "(") (str.to.re ")") (str.to.re "-") (str.to.re "+") (str.to.re "*"))) (re.range "0" "9"))) (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re ",") (str.to.re "#") (str.to.re "/") (str.to.re " ") (str.to.re ".") (str.to.re "(") (str.to.re ")") (str.to.re "-") (str.to.re "+") (str.to.re "*"))) (str.to.re "\x0a")))))
(check-sat)
