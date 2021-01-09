(declare-const X String)
; [\s0-9a-zA-Z\;\"\,\<\>\\?\+\=\)\(\\*\&\%\\$\#\.]*
(assert (not (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re ";") (str.to.re "\x22") (str.to.re ",") (str.to.re "<") (str.to.re ">") (str.to.re "\x5c") (str.to.re "?") (str.to.re "+") (str.to.re "=") (str.to.re ")") (str.to.re "(") (str.to.re "*") (str.to.re "&") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; ^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z]))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (str.to.re "-") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))))))
(check-sat)
