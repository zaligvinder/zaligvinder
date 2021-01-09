(declare-const X String)
; ^(([1][0-2])|([0]?[1-9]{1}))\/(([0-2]?\d{1})|([3][0,1]{1}))\/(([1]{1}[9]{1}[9]{1}\d{1})|([2-9]{1}\d{3}))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (re.opt (str.to.re "0")) ((_ re.loop 1 1) (re.range "1" "9")))) (str.to.re "/") (re.union (re.++ (re.opt (re.range "0" "2")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to.re "3") ((_ re.loop 1 1) (re.union (str.to.re "0") (str.to.re ",") (str.to.re "1"))))) (str.to.re "/") (re.union (re.++ ((_ re.loop 1 1) (str.to.re "1")) ((_ re.loop 1 1) (str.to.re "9")) ((_ re.loop 1 1) (str.to.re "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a")))))
; /g\/\d{9}\/[0-9a-f]{32}\/[0-9]$/U
(assert (not (str.in.re X (re.++ (str.to.re "/g/") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "/") (re.range "0" "9") (str.to.re "/U\x0a")))))
; The company delivers cakes and also online send mothers  day flowers to Delhi.
(assert (str.in.re X (re.++ (str.to.re "The company delivers cakes and also online send mothers  day flowers to Delhi") re.allchar (str.to.re "\x0a"))))
; X-Mailer\x3a.*User-Agent\x3A[^\n\r]*ulmxct\x2fmqoyc
(assert (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.* re.allchar) (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "ulmxct/mqoyc\x0a"))))
; /filename=[^\n]*\x2e3gp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".3gp/i\x0a"))))
(check-sat)
