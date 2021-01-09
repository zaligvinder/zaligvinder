(declare-const X String)
; ^[-+]?\d+(\.\d+)?|[-+]?\.\d+?$
(assert (str.in.re X (re.union (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))) (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; corep\x2Edmcast\x2EcomOwner\x3A
(assert (str.in.re X (str.to.re "corep.dmcast.comOwner:\x0a")))
; <[ \t]*[iI][mM][gG][ \t]*[sS][rR][cC][ \t]*=[ \t]*['\"]([^'\"]+)
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.* (re.union (str.to.re " ") (str.to.re "\x09"))) (re.union (str.to.re "i") (str.to.re "I")) (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "g") (str.to.re "G")) (re.* (re.union (str.to.re " ") (str.to.re "\x09"))) (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "r") (str.to.re "R")) (re.union (str.to.re "c") (str.to.re "C")) (re.* (re.union (str.to.re " ") (str.to.re "\x09"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09"))) (re.union (str.to.re "'") (str.to.re "\x22")) (re.+ (re.union (str.to.re "'") (str.to.re "\x22"))) (str.to.re "\x0a")))))
; www\x2Ealfacleaner\x2EcomHost\x3aLogs
(assert (not (str.in.re X (str.to.re "www.alfacleaner.comHost:Logs\x0a"))))
; ^([(][1-9]{2}[)] )?[0-9]{4}[-]?[0-9]{4}$
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "(") ((_ re.loop 2 2) (re.range "1" "9")) (str.to.re ") "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
