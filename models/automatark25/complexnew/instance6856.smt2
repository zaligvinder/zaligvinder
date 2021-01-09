(declare-const X String)
; /hwid=[^\x0a\x26]+?\x26pc=[^\x0a\x26]+?\x26localip=[^\x0a\x26]+?\x26winver=/U
(assert (not (str.in.re X (re.++ (str.to.re "/hwid=") (re.+ (re.union (str.to.re "\x0a") (str.to.re "&"))) (str.to.re "&pc=") (re.+ (re.union (str.to.re "\x0a") (str.to.re "&"))) (str.to.re "&localip=") (re.+ (re.union (str.to.re "\x0a") (str.to.re "&"))) (str.to.re "&winver=/U\x0a")))))
; ^((\-|d|l|p|s){1}(\-|r|w|x){9})$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re "d") (str.to.re "l") (str.to.re "p") (str.to.re "s"))) ((_ re.loop 9 9) (re.union (str.to.re "-") (str.to.re "r") (str.to.re "w") (str.to.re "x")))))))
; ^(\+)?([9]{1}[2]{1})?-? ?(\()?([0]{1})?[1-9]{2,4}(\))?-? ??(\()?[1-9]{4,7}(\))?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "+")) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re "9")) ((_ re.loop 1 1) (str.to.re "2")))) (re.opt (str.to.re "-")) (re.opt (str.to.re " ")) (re.opt (str.to.re "(")) (re.opt ((_ re.loop 1 1) (str.to.re "0"))) ((_ re.loop 2 4) (re.range "1" "9")) (re.opt (str.to.re ")")) (re.opt (str.to.re "-")) (re.opt (str.to.re " ")) (re.opt (str.to.re "(")) ((_ re.loop 4 7) (re.range "1" "9")) (re.opt (str.to.re ")")) (str.to.re "\x0a"))))
; MyverToolbarTrojanControlHost\x3A
(assert (str.in.re X (str.to.re "MyverToolbarTrojanControlHost:\x0a")))
(check-sat)
