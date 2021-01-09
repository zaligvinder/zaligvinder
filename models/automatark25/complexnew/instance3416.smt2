(declare-const X String)
; /Host\x3a[^\n]+\x3a\d+\x0d\x0a/
(assert (str.in.re X (re.++ (str.to.re "/Host:") (re.+ (re.comp (str.to.re "\x0a"))) (str.to.re ":") (re.+ (re.range "0" "9")) (str.to.re "\x0d\x0a/\x0a"))))
; www\x2Emaxifiles\x2EcomServidor\x2E
(assert (str.in.re X (str.to.re "www.maxifiles.comServidor.\x13\x0a")))
; (^-\d*\.?\d*[1-9]+\d*$)|(^-[1-9]+\d*\.\d*$)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "-") (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))) (re.++ (str.to.re "\x0a-") (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9")))))))
; ^[+-]?[0-9]+$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
