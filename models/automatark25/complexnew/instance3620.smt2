(declare-const X String)
; ^\s*[a-zA-Z0-9&\-\./,\s]+\s*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "&") (str.to.re "-") (str.to.re ".") (str.to.re "/") (str.to.re ",") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; libManager\x2Edll\x5Eget
(assert (str.in.re X (str.to.re "libManager.dll^get\x0a")))
; WinSession\w+asdbiz\x2Ebizfrom\x7croogoo\x7cCurrentiOpus
(assert (not (str.in.re X (re.++ (str.to.re "WinSession") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "asdbiz.bizfrom|roogoo|CurrentiOpus\x0a")))))
; (^[0-9]{2,3}\.[0-9]{3}\.[0-9]{3}\/[0-9]{4}-[0-9]{2}$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9"))))))
(check-sat)
