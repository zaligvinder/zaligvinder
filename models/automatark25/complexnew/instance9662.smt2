(declare-const X String)
; NetControl\x2EServerNetTrackerSiLENTHost\x3A
(assert (not (str.in.re X (str.to.re "NetControl.Server\x13NetTrackerSiLENTHost:\x0a"))))
; ^[2-7]{1}[0-9]{3}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "2" "7")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
