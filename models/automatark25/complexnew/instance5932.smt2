(declare-const X String)
; /^range\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (not (str.in.re X (re.++ (str.to.re "/range|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a")))))
; ^\d{8,8}$|^[SC]{2,2}\d{6,6}$
(assert (str.in.re X (re.union ((_ re.loop 8 8) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.union (str.to.re "S") (str.to.re "C"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
; (.*)-----(BEGIN|END)([^-]*)-----(.*)
(assert (not (str.in.re X (re.++ (re.* re.allchar) (str.to.re "-----") (re.union (str.to.re "BEGIN") (str.to.re "END")) (re.* (re.comp (str.to.re "-"))) (str.to.re "-----") (re.* re.allchar) (str.to.re "\x0a")))))
; ^M{0,1}T{0,1}W{0,1}(TH){0,1}F{0,1}S{0,1}(SU){0,1}$
(assert (str.in.re X (re.++ (re.opt (str.to.re "M")) (re.opt (str.to.re "T")) (re.opt (str.to.re "W")) (re.opt (str.to.re "TH")) (re.opt (str.to.re "F")) (re.opt (str.to.re "S")) (re.opt (str.to.re "SU")) (str.to.re "\x0a"))))
; \binterface\b.*(\bI[_]\w*\b)
(assert (not (str.in.re X (re.++ (str.to.re "interface") (re.* re.allchar) (str.to.re "\x0aI_") (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
(check-sat)
