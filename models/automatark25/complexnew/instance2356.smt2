(declare-const X String)
; /filename=[^\n]*\x2eskm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".skm/i\x0a")))))
; e2give\.comADRemoteHost\x3A
(assert (str.in.re X (str.to.re "e2give.comADRemoteHost:\x0a")))
; myInstance\.myMethod(.*)\(.*myParam.*\)
(assert (not (str.in.re X (re.++ (str.to.re "myInstance.myMethod") (re.* re.allchar) (str.to.re "(") (re.* re.allchar) (str.to.re "myParam") (re.* re.allchar) (str.to.re ")\x0a")))))
; ^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.pdf)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":")) (re.++ (re.opt (str.to.re "$")) ((_ re.loop 2 2) (str.to.re "\x5c")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (re.+ (re.++ (str.to.re "\x5c") (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.* re.allchar))) (str.to.re "\x0a") re.allchar (str.to.re "pdf")))))
(check-sat)
