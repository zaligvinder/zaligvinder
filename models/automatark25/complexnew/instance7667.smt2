(declare-const X String)
; ^[0-9]*[1-9]+[0-9]*$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[A-Za-z0-9]{8}-[A-Za-z0-9]{4}-[A-Za-z0-9]{4}-[A-Za-z0-9]{4}-[A-Za-z0-9]{12}$
(assert (str.in.re X (re.++ ((_ re.loop 8 8) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 12 12) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "\x0a"))))
; Server\d+dcww\x2Edmcast\x2EcomdistID=Host\x3aSubject\x3A
(assert (str.in.re X (re.++ (str.to.re "Server") (re.+ (re.range "0" "9")) (str.to.re "dcww.dmcast.comdistID=Host:Subject:\x0a"))))
; ^[A-Z]+[A-Z0-9,\x5F]*$
(assert (not (str.in.re X (re.++ (re.+ (re.range "A" "Z")) (re.* (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re ",") (str.to.re "_"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2eqcp/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".qcp/i\x0a")))))
(check-sat)
