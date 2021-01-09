(declare-const X String)
; (^([\w]+[^\W])([^\W]\.?)([\w]+[^\W]$))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (str.to.re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
; [a-z]{1}[a-z0-9\-_\.]{2,24}@tlen\.pl
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "a" "z")) ((_ re.loop 2 24) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "_") (str.to.re "."))) (str.to.re "@tlen.pl\x0a")))))
; Download\d+ocllceclbhs\x2fgth
(assert (str.in.re X (re.++ (str.to.re "Download") (re.+ (re.range "0" "9")) (str.to.re "ocllceclbhs/gth\x0a"))))
(check-sat)
