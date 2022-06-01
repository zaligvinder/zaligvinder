(declare-const X String)
; <img .+ src[ ]*=[ ]*\"(.+)\"
(assert (str.in_re X (re.++ (str.to_re "<img ") (re.+ re.allchar) (str.to_re " src") (re.* (str.to_re " ")) (str.to_re "=") (re.* (str.to_re " ")) (str.to_re "\u{22}") (re.+ re.allchar) (str.to_re "\u{22}\u{a}"))))
; weather2ResultX-Sender\u{3A}
(assert (not (str.in_re X (str.to_re "weather2ResultX-Sender:\u{13}\u{a}"))))
; ^([0-9a-zA-Z]+[-._+&])*[0-9a-zA-Z_-]+@([-0-9a-zA-Z]+[.])+[a-zA-Z]{2,6}$
(assert (not (str.in_re X (re.++ (re.* (re.++ (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "+") (str.to_re "&")))) (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to_re "_") (str.to_re "-"))) (str.to_re "@") (re.+ (re.++ (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "."))) ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}")))))
; ^[a-zA-Z0-9\s.\-_']+$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-") (str.to_re "_") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
; IndyHost\u{3A}GirlFriendReferer\u{3A}
(assert (str.in_re X (str.to_re "IndyHost:GirlFriendReferer:\u{a}")))
(check-sat)
