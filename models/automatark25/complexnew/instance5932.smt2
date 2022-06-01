(declare-const X String)
; /^range\u{7c}\d+\u{7c}\d+\u{7C}[a-z0-9]+\u{2E}[a-z]{2,3}\u{7C}[a-z0-9]+\u{7C}/
(assert (not (str.in_re X (re.++ (str.to_re "/range|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "|/\u{a}")))))
; ^\d{8,8}$|^[SC]{2,2}\d{6,6}$
(assert (str.in_re X (re.union ((_ re.loop 8 8) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.union (str.to_re "S") (str.to_re "C"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}")))))
; (.*)-----(BEGIN|END)([^-]*)-----(.*)
(assert (not (str.in_re X (re.++ (re.* re.allchar) (str.to_re "-----") (re.union (str.to_re "BEGIN") (str.to_re "END")) (re.* (re.comp (str.to_re "-"))) (str.to_re "-----") (re.* re.allchar) (str.to_re "\u{a}")))))
; ^M{0,1}T{0,1}W{0,1}(TH){0,1}F{0,1}S{0,1}(SU){0,1}$
(assert (str.in_re X (re.++ (re.opt (str.to_re "M")) (re.opt (str.to_re "T")) (re.opt (str.to_re "W")) (re.opt (str.to_re "TH")) (re.opt (str.to_re "F")) (re.opt (str.to_re "S")) (re.opt (str.to_re "SU")) (str.to_re "\u{a}"))))
; \binterface\b.*(\bI[_]\w*\b)
(assert (not (str.in_re X (re.++ (str.to_re "interface") (re.* re.allchar) (str.to_re "\u{a}I_") (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))))))
(check-sat)
