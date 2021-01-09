(declare-const X String)
; /\/images\/[a-zA-Z]\.php\?id\=[0-9]{2,3}(\.\d)?$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//images/") (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ".php?id=") ((_ re.loop 2 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9"))) (str.to.re "/Ui\x0a")))))
; \x2Fpagead\x2Fads\?\d+ocllceclbhs\x2fgth
(assert (not (str.in.re X (re.++ (str.to.re "/pagead/ads?") (re.+ (re.range "0" "9")) (str.to.re "ocllceclbhs/gth\x0a")))))
; /filename=[^\n]*\x2ewk4/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wk4/i\x0a")))))
(check-sat)
