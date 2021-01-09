(declare-const X String)
; ^([01]\d|2[0123])([0-5]\d){2}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3")))) ((_ re.loop 2 2) (re.++ (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a")))))
; [A-Za-z]+
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ezip/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".zip/i\x0a")))))
; Referer\x3A.*notification.*qisezhin\x2fiqor\.ymspasServer\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Referer:") (re.* re.allchar) (str.to.re "notification\x13") (re.* re.allchar) (str.to.re "qisezhin/iqor.ym\x13spasServer:\x0a")))))
(check-sat)
