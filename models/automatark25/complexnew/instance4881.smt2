(declare-const X String)
; /TimeToLive=[^&]*?(%60|\x60)/iP
(assert (not (str.in.re X (re.++ (str.to.re "/TimeToLive=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "%60") (str.to.re "`")) (str.to.re "/iP\x0a")))))
; (\[[abiu][^\[\]]*\])([^\[\]]+)(\[/?[abiu]\])
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "[") (str.to.re "]"))) (str.to.re "\x0a[") (re.union (str.to.re "a") (str.to.re "b") (str.to.re "i") (str.to.re "u")) (re.* (re.union (str.to.re "[") (str.to.re "]"))) (str.to.re "][") (re.opt (str.to.re "/")) (re.union (str.to.re "a") (str.to.re "b") (str.to.re "i") (str.to.re "u")) (str.to.re "]")))))
; ^([34|37]{2})([0-9]{13})$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (str.to.re "3") (str.to.re "4") (str.to.re "|") (str.to.re "7"))) ((_ re.loop 13 13) (re.range "0" "9")) (str.to.re "\x0a"))))
; [0-9]{2}-?[DF][A-Z]{2}-?[0-9]{1}|[DF][A-Z]{1}-?[0-9]{3}-?[A-Z]{1}|[DF]-?[0-9]{3}-?[A-Z]{2}|[DF][A-Z]{2}-?[0-9]{2}-?[A-Z]{1}$
(assert (str.in.re X (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re "-")) (re.union (str.to.re "D") (str.to.re "F")) ((_ re.loop 2 2) (re.range "A" "Z")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (re.union (str.to.re "D") (str.to.re "F")) ((_ re.loop 1 1) (re.range "A" "Z")) (re.opt (str.to.re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "A" "Z"))) (re.++ (re.union (str.to.re "D") (str.to.re "F")) (re.opt (str.to.re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 2 2) (re.range "A" "Z"))) (re.++ (re.union (str.to.re "D") (str.to.re "F")) ((_ re.loop 2 2) (re.range "A" "Z")) (re.opt (str.to.re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "A" "Z")) (str.to.re "\x0a")))))
; /\?inf\=[0-9a-f]{8}\x2Ex\d{2}\x2E\d{8}\x2E/Ui
(assert (str.in.re X (re.++ (str.to.re "/?inf=") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re ".x") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "./Ui\x0a"))))
(check-sat)
