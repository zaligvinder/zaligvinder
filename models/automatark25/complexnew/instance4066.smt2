(declare-const X String)
; ^[a-zA-Z0-9._%-]+@[a-zA-Z0-9._%-]+\.[a-zA-Z]{2,4}\s*$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "%") (str.to.re "-"))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "%") (str.to.re "-"))) (str.to.re ".") ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; /filename=[a-z]{5,8}\d{2,3}\.xap\x0d\x0a/Hm
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ".xap\x0d\x0a/Hm\x0a")))))
; ^((5)/(1|2|5)/([0-9])/([0-9])/([0-9])/([0-9])/([0-9])/([0-9])/([2-9]))$
(assert (str.in.re X (re.++ (str.to.re "\x0a5/") (re.union (str.to.re "1") (str.to.re "2") (str.to.re "5")) (str.to.re "/") (re.range "0" "9") (str.to.re "/") (re.range "0" "9") (str.to.re "/") (re.range "0" "9") (str.to.re "/") (re.range "0" "9") (str.to.re "/") (re.range "0" "9") (str.to.re "/") (re.range "0" "9") (str.to.re "/") (re.range "2" "9"))))
(check-sat)
