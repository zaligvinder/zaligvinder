(declare-const X String)
; ^[a-zA-Z\d]+(([\'\,\.\- #][a-zA-Z\d ])?[a-zA-Z\d]*[\.]*)*$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (re.opt (re.++ (re.union (str.to_re "'") (str.to_re ",") (str.to_re ".") (str.to_re "-") (str.to_re " ") (str.to_re "#")) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re " ")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (str.to_re ".")))) (str.to_re "\u{a}")))))
(check-sat)
