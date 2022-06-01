(declare-const X String)
; iz=cyber@yahoo\u{2E}comSpyBuddyCenterIP-WindowsAttachedPalas\u{2E}starware\u{2E}com\u{2F}dp\u{2F}search\?x=
(assert (str.in_re X (str.to_re "iz=cyber@yahoo.comSpyBuddyCenterIP-WindowsAttachedPalas.starware.com/dp/search?x=\u{a}")))
; ^[1-4]\d{3}\/((0?[1-6]\/((3[0-1])|([1-2][0-9])|(0?[1-9])))|((1[0-2]|(0?[7-9]))\/(30|([1-2][0-9])|(0?[1-9]))))$
(assert (str.in_re X (re.++ (re.range "1" "4") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "/") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "6") (str.to_re "/") (re.union (re.++ (str.to_re "3") (re.range "0" "1")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")))) (re.++ (re.union (re.++ (str.to_re "1") (re.range "0" "2")) (re.++ (re.opt (str.to_re "0")) (re.range "7" "9"))) (str.to_re "/") (re.union (str.to_re "30") (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9"))))) (str.to_re "\u{a}"))))
; ^(X(-|\.)?0?\d{7}(-|\.)?[A-Z]|[A-Z](-|\.)?\d{7}(-|\.)?[0-9A-Z]|\d{8}(-|\.)?[A-Z])$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "X") (re.opt (re.union (str.to_re "-") (str.to_re "."))) (re.opt (str.to_re "0")) ((_ re.loop 7 7) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re "."))) (re.range "A" "Z")) (re.++ (re.range "A" "Z") (re.opt (re.union (str.to_re "-") (str.to_re "."))) ((_ re.loop 7 7) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re "."))) (re.union (re.range "0" "9") (re.range "A" "Z"))) (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re "."))) (re.range "A" "Z"))) (str.to_re "\u{a}")))))
; ^\d{5}((-|\s)?\d{4})?$
(assert (not (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; LogsHost\u{3a}searches\u{2E}worldtostart\u{2E}com
(assert (not (str.in_re X (str.to_re "LogsHost:searches.worldtostart.com\u{a}"))))
(check-sat)
