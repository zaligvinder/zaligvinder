(declare-const X String)
; ^[A-Z].*$
(assert (not (str.in.re X (re.++ (re.range "A" "Z") (re.* re.allchar) (str.to.re "\x0a")))))
; ^\d(\d)?(\d)?$
(assert (not (str.in.re X (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to.re "\x0a")))))
; corep\x2Edmcast\x2EcomOwner\x3A
(assert (not (str.in.re X (str.to.re "corep.dmcast.comOwner:\x0a"))))
(check-sat)
