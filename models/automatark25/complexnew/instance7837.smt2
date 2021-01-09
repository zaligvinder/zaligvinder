(declare-const X String)
; ^\w+(([-+']|[-+.]|\w+))*@\w+([-.]\w+)*\.\w+([-.]\w+)*$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "-") (str.to.re "+") (str.to.re "'") (str.to.re "-") (str.to.re "+") (str.to.re "."))) (str.to.re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (re.union (str.to.re "-") (str.to.re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re ".") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (re.union (str.to.re "-") (str.to.re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "\x0a"))))
; /agent_(win|lin|mac)_helper\.jar$/siU
(assert (not (str.in.re X (re.++ (str.to.re "/agent_") (re.union (str.to.re "win") (str.to.re "lin") (str.to.re "mac")) (str.to.re "_helper.jar/siU\x0a")))))
(check-sat)
