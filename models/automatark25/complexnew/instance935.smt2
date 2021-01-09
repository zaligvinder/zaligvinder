(declare-const X String)
; ^\d(\.\d{1,2})?$
(assert (not (str.in.re X (re.++ (re.range "0" "9") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; trustyfiles\x2EcomBlade\x23\x23\x23\x23\.smx\?
(assert (str.in.re X (str.to.re "trustyfiles.comBlade####.smx?\x0a")))
; ([0-1][0-9]|2[0-3]):[0-5][0-9]
(assert (str.in.re X (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9") (str.to.re "\x0a"))))
; NetControl\x2EServerNetTrackerSiLENTHost\x3A
(assert (str.in.re X (str.to.re "NetControl.Server\x13NetTrackerSiLENTHost:\x0a")))
(check-sat)
