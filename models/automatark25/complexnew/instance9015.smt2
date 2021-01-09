(declare-const X String)
; Host\x3A\s+\.ico\s+Host\x3Aorigin\x3Dsidefind
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ".ico") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:origin=sidefind\x0a")))))
; /MODE\sd?u?n?\x7b[AU]\x5c[LD]\x5c(86|64)\x5c\w{0,8}\x5c\w{2,16}\x7d[a-z]{8}\s\x2BpiwksT\x2Dx\x0D\x0A/i
(assert (str.in.re X (re.++ (str.to.re "/MODE") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.opt (str.to.re "d")) (re.opt (str.to.re "u")) (re.opt (str.to.re "n")) (str.to.re "{") (re.union (str.to.re "A") (str.to.re "U")) (str.to.re "\x5c") (re.union (str.to.re "L") (str.to.re "D")) (str.to.re "\x5c") (re.union (str.to.re "86") (str.to.re "64")) (str.to.re "\x5c") ((_ re.loop 0 8) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x5c") ((_ re.loop 2 16) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "}") ((_ re.loop 8 8) (re.range "a" "z")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "+piwksT-x\x0d\x0a/i\x0a"))))
; ^((0[1-9])|(1[0-2]))[\/\.\-]*((0[8-9])|(1[1-9]))$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.* (re.union (str.to.re "/") (str.to.re ".") (str.to.re "-"))) (re.union (re.++ (str.to.re "0") (re.range "8" "9")) (re.++ (str.to.re "1") (re.range "1" "9"))) (str.to.re "\x0a"))))
; Host\x3ATest\x3C\x2Fchat\x3EResultsSubject\x3A
(assert (str.in.re X (str.to.re "Host:Test</chat>ResultsSubject:\x0a")))
; ^([EV])?\d{3,3}(\.\d{1,2})?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "E") (str.to.re "V"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
