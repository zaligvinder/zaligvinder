(declare-const X String)
; ^\+?[a-z0-9](([-+.]|[_]+)?[a-z0-9]+)*@([a-z0-9]+(\.|\-))+[a-z]{2,6}$
(assert (str.in.re X (re.++ (re.opt (str.to.re "+")) (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (re.+ (str.to.re "_")) (str.to.re "-") (str.to.re "+") (str.to.re "."))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))) (str.to.re "@") (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.union (str.to.re ".") (str.to.re "-")))) ((_ re.loop 2 6) (re.range "a" "z")) (str.to.re "\x0a"))))
; 1?[ \.\-\+]?[(]?([0-9]{3})?[)]?[ \.\-\+]?[0-9]{3}[ \.\-\+]?[0-9]{4}
(assert (str.in.re X (re.++ (re.opt (str.to.re "1")) (re.opt (re.union (str.to.re " ") (str.to.re ".") (str.to.re "-") (str.to.re "+"))) (re.opt (str.to.re "(")) (re.opt ((_ re.loop 3 3) (re.range "0" "9"))) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re " ") (str.to.re ".") (str.to.re "-") (str.to.re "+"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re ".") (str.to.re "-") (str.to.re "+"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^\s*[a-zA-Z,\s]+\s*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re ",") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
(check-sat)
