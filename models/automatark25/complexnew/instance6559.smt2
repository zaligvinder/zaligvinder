(declare-const X String)
; ^[A-Z].*$
(assert (not (str.in_re X (re.++ (re.range "A" "Z") (re.* re.allchar) (str.to_re "\u{a}")))))
; ^\d(\d)?(\d)?$
(assert (not (str.in_re X (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re "\u{a}")))))
; corep\u{2E}dmcast\u{2E}comOwner\u{3A}
(assert (not (str.in_re X (str.to_re "corep.dmcast.comOwner:\u{a}"))))
(check-sat)
