(declare-const X String)
; ^((\+)?(\d{2}[-])?(\d{10}){1})?(\d{11}){0,1}?$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) (re.opt (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-"))) ((_ re.loop 1 1) ((_ re.loop 10 10) (re.range "0" "9"))))) (re.opt ((_ re.loop 11 11) (re.range "0" "9"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ecaf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".caf/i\x0a")))))
; ^[\d]{1,}?\.[\d]{2}$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2eplp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".plp/i\x0a"))))
(check-sat)
