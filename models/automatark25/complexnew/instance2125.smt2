(declare-const X String)
; securityon\u{3A}Host\u{3A}Redirector\u{22}ServerHost\u{3A}
(assert (not (str.in_re X (str.to_re "securityon:Host:Redirector\u{22}ServerHost:\u{a}"))))
; \d{2}.?\d{3}.?\d{3}/?\d{4}-?\d{2}
(assert (not (str.in_re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt re.allchar) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt re.allchar) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "/")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /filename=[^\n]*\u{2e}wal/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wal/i\u{a}")))))
(check-sat)
