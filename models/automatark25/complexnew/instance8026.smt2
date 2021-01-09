(declare-const X String)
; SbAts\d+dcww\x2Edmcast\x2EcomdistID=
(assert (not (str.in.re X (re.++ (str.to.re "SbAts") (re.+ (re.range "0" "9")) (str.to.re "dcww.dmcast.comdistID=\x0a")))))
; ^\{(.+)|^\\(.+)|(\}*)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "{") (re.+ re.allchar)) (re.++ (str.to.re "\x5c") (re.+ re.allchar)) (re.++ (re.* (str.to.re "}")) (str.to.re "\x0a"))))))
; ^[-|\+]?[0-9]{1,3}(\,[0-9]{3})*$|^[-|\+]?[0-9]+$
(assert (str.in.re X (re.union (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "|") (str.to.re "+"))) ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "|") (str.to.re "+"))) (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; Subject\x3a\d+zmnjgmomgbdz\x2fzzmw\.gzt
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.range "0" "9")) (str.to.re "zmnjgmomgbdz/zzmw.gzt\x0a")))))
(check-sat)
