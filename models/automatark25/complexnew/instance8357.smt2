(declare-const X String)
; (^\d{1,9})+(,\d{1,9})*$
(assert (str.in.re X (re.++ (re.+ ((_ re.loop 1 9) (re.range "0" "9"))) (re.* (re.++ (str.to.re ",") ((_ re.loop 1 9) (re.range "0" "9")))) (str.to.re "\x0a"))))
; www\x2e2-seek\x2ecom\x2fsearchUser-Agent\x3a
(assert (str.in.re X (str.to.re "www.2-seek.com/searchUser-Agent:\x0a")))
; ^http://([a-zA-Z0-9_\-]+)([\.][a-zA-Z0-9_\-]+)+([/][a-zA-Z0-9\~\(\)_\-]*)+([\.][a-zA-Z0-9\(\)_\-]+)*$
(assert (str.in.re X (re.++ (str.to.re "http://") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (re.+ (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))))) (re.+ (re.++ (str.to.re "/") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "~") (str.to.re "(") (str.to.re ")") (str.to.re "_") (str.to.re "-"))))) (re.* (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "(") (str.to.re ")") (str.to.re "_") (str.to.re "-"))))) (str.to.re "\x0a"))))
; ^(([0]?[0-5][0-9]|[0-9]):([0-5][0-9]))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "0" "5") (re.range "0" "9")) (re.range "0" "9")) (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))))
(check-sat)
