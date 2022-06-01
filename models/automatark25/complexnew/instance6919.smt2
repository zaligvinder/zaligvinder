(declare-const X String)
; /^.{27}/sR
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 27 27) re.allchar) (str.to_re "/sR\u{a}")))))
; ^([a-zA-Z,#/ \.\(\)\-\+\*]*[0-9]){7}[0-9a-zA-Z,#/ \.\(\)\-\+\*]*$
(assert (str.in_re X (re.++ ((_ re.loop 7 7) (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re ",") (str.to_re "#") (str.to_re "/") (str.to_re " ") (str.to_re ".") (str.to_re "(") (str.to_re ")") (str.to_re "-") (str.to_re "+") (str.to_re "*"))) (re.range "0" "9"))) (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to_re ",") (str.to_re "#") (str.to_re "/") (str.to_re " ") (str.to_re ".") (str.to_re "(") (str.to_re ")") (str.to_re "-") (str.to_re "+") (str.to_re "*"))) (str.to_re "\u{a}"))))
; download\u{2E}eblocs\u{2E}comHost\u{3A}Referer\u{3A}
(assert (not (str.in_re X (str.to_re "download.eblocs.comHost:Referer:\u{a}"))))
; ^([0-9][,]?)*([0-9][0-9])$
(assert (not (str.in_re X (re.++ (re.* (re.++ (re.range "0" "9") (re.opt (str.to_re ",")))) (str.to_re "\u{a}") (re.range "0" "9") (re.range "0" "9")))))
; [a-z0-9][a-z0-9_\.-]{0,}[a-z0-9]\.[a-z0-9][a-z0-9_\.-]{0,}[a-z0-9][\.][cn]{2,4}
(assert (not (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "_") (str.to_re ".") (str.to_re "-"))) (re.union (re.range "a" "z") (re.range "0" "9")) (str.to_re ".") (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "_") (str.to_re ".") (str.to_re "-"))) (re.union (re.range "a" "z") (re.range "0" "9")) (str.to_re ".") ((_ re.loop 2 4) (re.union (str.to_re "c") (str.to_re "n"))) (str.to_re "\u{a}")))))
(check-sat)
