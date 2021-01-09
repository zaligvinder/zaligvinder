(declare-const X String)
; (\b(10|11|12|13|14|15|16|17|18|19)[0-9]\b)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.range "0" "9") (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9"))))))
; ^\${1}[a-z]{1}[a-z\d]{0,6}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "$")) ((_ re.loop 1 1) (re.range "a" "z")) ((_ re.loop 0 6) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; /update\/barcab\/.*?tn=.*id=.*version=/smi
(assert (not (str.in.re X (re.++ (str.to.re "/update/barcab/") (re.* re.allchar) (str.to.re "tn=") (re.* re.allchar) (str.to.re "id=") (re.* re.allchar) (str.to.re "version=/smi\x0a")))))
; /filename=[^\n]*\x2eabc/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".abc/i\x0a"))))
; ^\d{2}(\x2e)(\d{3})(-\d{3})?$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
