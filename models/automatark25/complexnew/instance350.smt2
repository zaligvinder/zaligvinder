(declare-const X String)
; ^([1-9]+[0-9]*|\d*[.,]\d)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (re.union (str.to.re ".") (str.to.re ",")) (re.range "0" "9"))) (str.to.re "\x0a")))))
; ^[2-9]{2}[0-9]{8}$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "2" "9")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2erjs/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rjs/i\x0a")))))
; HXLogOnlyDaemonactivityIterenetFrom\x3AClass
(assert (not (str.in.re X (str.to.re "HXLogOnlyDaemonactivityIterenetFrom:Class\x0a"))))
(check-sat)
