(declare-const X String)
; [0-1]+
(assert (str.in.re X (re.++ (re.+ (re.range "0" "1")) (str.to.re "\x0a"))))
; ^[9]9\d{10}|^[5]\d{10}
(assert (str.in.re X (re.union (re.++ (str.to.re "99") ((_ re.loop 10 10) (re.range "0" "9"))) (re.++ (str.to.re "5") ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^([a-zA-Z]+[\'\,\.\-]?[a-zA-Z ]*)+[ ]([a-zA-Z]+[\'\,\.\-]?[a-zA-Z ]+)+$
(assert (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.union (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "-"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re " "))))) (str.to.re " ") (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.union (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re " "))))) (str.to.re "\x0a"))))
; sidesearch\.dropspam\.com\s+Strip-Player
(assert (str.in.re X (re.++ (str.to.re "sidesearch.dropspam.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Strip-Player\x1b\x0a"))))
(check-sat)
