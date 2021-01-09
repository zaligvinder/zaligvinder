(declare-const X String)
; passcorrect\x3B\s+\x2Fcbn\x2Fnode=Host\x3A\x3Fsearch\x3Dversion
(assert (str.in.re X (re.++ (str.to.re "passcorrect;") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/cbn/node=Host:?search=version\x0a"))))
; ^([0]?[1-9]|[1][0-2]|[2][0-3]):([0-5][0-9]|[1-9])$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.union (re.++ (re.range "0" "5") (re.range "0" "9")) (re.range "1" "9")) (str.to.re "\x0a")))))
; /(\x13\x00|\x00\x5C)\x00m\x00q\x00r\x00t\x00\.\x00d\x00l\x00l\x00\x00\x00/i
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "\x13\x00") (str.to.re "\x00\x5c")) (str.to.re "\x00m\x00q\x00r\x00t\x00.\x00d\x00l\x00l\x00\x00\x00/i\x0a"))))
; ^\{[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}\}$
(assert (not (str.in.re X (re.++ (str.to.re "{") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 12 12) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "}\x0a")))))
; (^[a-zA-Z][a-zA-Z0-9_]*)|(^[_][a-zA-Z0-9_]+)
(assert (not (str.in.re X (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_")))) (re.++ (str.to.re "\x0a_") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))))))))
(check-sat)
