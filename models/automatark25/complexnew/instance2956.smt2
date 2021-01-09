(declare-const X String)
; iz=cyber@yahoo\x2EcomSpyBuddyCenterIP-WindowsAttachedPalas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (str.in.re X (str.to.re "iz=cyber@yahoo.comSpyBuddyCenterIP-WindowsAttachedPalas.starware.com/dp/search?x=\x0a")))
; ^[1-4]\d{3}\/((0?[1-6]\/((3[0-1])|([1-2][0-9])|(0?[1-9])))|((1[0-2]|(0?[7-9]))\/(30|([1-2][0-9])|(0?[1-9]))))$
(assert (str.in.re X (re.++ (re.range "1" "4") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "/") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "6") (str.to.re "/") (re.union (re.++ (str.to.re "3") (re.range "0" "1")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")))) (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (re.opt (str.to.re "0")) (re.range "7" "9"))) (str.to.re "/") (re.union (str.to.re "30") (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))))) (str.to.re "\x0a"))))
; ^(X(-|\.)?0?\d{7}(-|\.)?[A-Z]|[A-Z](-|\.)?\d{7}(-|\.)?[0-9A-Z]|\d{8}(-|\.)?[A-Z])$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "X") (re.opt (re.union (str.to.re "-") (str.to.re "."))) (re.opt (str.to.re "0")) ((_ re.loop 7 7) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re "."))) (re.range "A" "Z")) (re.++ (re.range "A" "Z") (re.opt (re.union (str.to.re "-") (str.to.re "."))) ((_ re.loop 7 7) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re "."))) (re.union (re.range "0" "9") (re.range "A" "Z"))) (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re "."))) (re.range "A" "Z"))) (str.to.re "\x0a")))))
; ^\d{5}((-|\s)?\d{4})?$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
; LogsHost\x3asearches\x2Eworldtostart\x2Ecom
(assert (not (str.in.re X (str.to.re "LogsHost:searches.worldtostart.com\x0a"))))
(check-sat)
