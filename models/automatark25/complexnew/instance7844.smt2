(declare-const X String)
; ^(\d{5}-\d{4}|\d{5})$
(assert (not (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9"))) (str.to_re "\u{a}")))))
; Logs.*with\u{3A}\s+OnlineServer\u{3a}Yeah\!
(assert (not (str.in_re X (re.++ (str.to_re "Logs") (re.* re.allchar) (str.to_re "with:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "OnlineServer:Yeah!\u{a}")))))
; ^([a-zA-Z0-9]{1,15})$
(assert (str.in_re X (re.++ ((_ re.loop 1 15) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}"))))
(check-sat)
