(declare-const X String)
; <img .+ src[ ]*=[ ]*\"(.+)\"
(assert (str.in.re X (re.++ (str.to.re "<img ") (re.+ re.allchar) (str.to.re " src") (re.* (str.to.re " ")) (str.to.re "=") (re.* (str.to.re " ")) (str.to.re "\x22") (re.+ re.allchar) (str.to.re "\x22\x0a"))))
; weather2ResultX-Sender\x3A
(assert (not (str.in.re X (str.to.re "weather2ResultX-Sender:\x13\x0a"))))
; ^([0-9a-zA-Z]+[-._+&])*[0-9a-zA-Z_-]+@([-0-9a-zA-Z]+[.])+[a-zA-Z]{2,6}$
(assert (not (str.in.re X (re.++ (re.* (re.++ (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (re.union (str.to.re "-") (str.to.re ".") (str.to.re "_") (str.to.re "+") (str.to.re "&")))) (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "-"))) (str.to.re "@") (re.+ (re.++ (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "."))) ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
; ^[a-zA-Z0-9\s.\-_']+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "-") (str.to.re "_") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; IndyHost\x3AGirlFriendReferer\x3A
(assert (str.in.re X (str.to.re "IndyHost:GirlFriendReferer:\x0a")))
(check-sat)
