(declare-const X String)
; asdbiz\x2Ebiz\dATTENTION\x3Aemail
(assert (str.in.re X (re.++ (str.to.re "asdbiz.biz") (re.range "0" "9") (str.to.re "ATTENTION:email\x0a"))))
; ^[_a-zA-Z0-9-]+(\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.(([0-9]{1,3})|([a-zA-Z]{2,3})|(aero|coop|info|museum|name))$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "_") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (re.* (re.++ (str.to.re ".") (re.+ (re.union (str.to.re "_") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (re.* (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))))) (str.to.re ".") (re.union ((_ re.loop 1 3) (re.range "0" "9")) ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "aero") (str.to.re "coop") (str.to.re "info") (str.to.re "museum") (str.to.re "name")) (str.to.re "\x0a")))))
; [a-z0-9]{1,11}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 11) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; /rapidshare\.com\/files\/(\d+)\/([^\'^\"^\s^>^<^\\^\/]+)/
(assert (not (str.in.re X (re.++ (str.to.re "/rapidshare.com/files/") (re.+ (re.range "0" "9")) (str.to.re "/") (re.+ (re.union (str.to.re "'") (str.to.re "^") (str.to.re "\x22") (str.to.re ">") (str.to.re "<") (str.to.re "\x5c") (str.to.re "/") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/\x0a")))))
(check-sat)
