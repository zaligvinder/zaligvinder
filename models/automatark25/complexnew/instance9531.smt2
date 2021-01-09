(declare-const X String)
; /\/setup\/[a-z0-9!-]{50}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//setup/") ((_ re.loop 50 50) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "!") (str.to.re "-"))) (str.to.re "/Ui\x0a")))))
; /filename=[^\n]*\x2ertx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rtx/i\x0a")))))
; ^((\+|00)[1-9]{1,3})?(\-| {0,1})?(([\d]{0,3})(\-| {0,1})?([\d]{5,11})){1}$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "+") (str.to.re "00")) ((_ re.loop 1 3) (re.range "1" "9")))) (re.opt (re.union (str.to.re "-") (re.opt (str.to.re " ")))) ((_ re.loop 1 1) (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (re.opt (str.to.re " ")))) ((_ re.loop 5 11) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
