(declare-const X String)
; ^(([0-9])|([0-1][0-9])|([2][0-3])):(([0-9])|([0-5][0-9]))$
(assert (str.in.re X (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.union (re.range "0" "9") (re.++ (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^[0-9]{1,}(,[0-9]+){0,}$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re ",") (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; /\x3d\x0a$/P
(assert (str.in.re X (str.to.re "/=\x0a/P\x0a")))
; jsp\d+Host\x3A\d+moreKontikiHost\x3aAcmeEvilFTP
(assert (str.in.re X (re.++ (str.to.re "jsp") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "moreKontikiHost:AcmeEvilFTP\x0a"))))
; Validation of Mexican RFC for tax payers (individuals)
(assert (not (str.in.re X (str.to.re "Validation of Mexican RFC for tax payers individuals\x0a"))))
(check-sat)
