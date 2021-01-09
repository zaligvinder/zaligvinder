(declare-const X String)
; ^[0-2]?[1-9]{1}$|^3{1}[01]{1}$
(assert (not (str.in.re X (re.union (re.++ (re.opt (re.range "0" "2")) ((_ re.loop 1 1) (re.range "1" "9"))) (re.++ ((_ re.loop 1 1) (str.to.re "3")) ((_ re.loop 1 1) (re.union (str.to.re "0") (str.to.re "1"))) (str.to.re "\x0a"))))))
; Host\x3A\d+rprpgbnrppb\x2fci[^\n\r]*RXFilteredDmInf\x5E
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "rprpgbnrppb/ci") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "RXFilteredDmInf^\x0a"))))
; ^(\(?\+?[0-9]*\)?)?[0-9_\- \(\)]*$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "(")) (re.opt (str.to.re "+")) (re.* (re.range "0" "9")) (re.opt (str.to.re ")")))) (re.* (re.union (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re " ") (str.to.re "(") (str.to.re ")"))) (str.to.re "\x0a")))))
; www\x2Ewebcruiser\x2Eccgot
(assert (not (str.in.re X (str.to.re "www.webcruiser.ccgot\x0a"))))
(check-sat)
