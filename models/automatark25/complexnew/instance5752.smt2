(declare-const X String)
; [\(]{1,}[^)]*[)]{1,}
(assert (not (str.in.re X (re.++ (re.+ (str.to.re "(")) (re.* (re.comp (str.to.re ")"))) (re.+ (str.to.re ")")) (str.to.re "\x0a")))))
; (([A-Za-z0-9_\\-]+\\.?)*)[A-Za-z0-9_\\-]+\\.[A-Za-z0-9_\\-]{2,6}
(assert (str.in.re X (re.++ (re.* (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re "\x5c") (str.to.re "-"))) (str.to.re "\x5c") (re.opt re.allchar))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re "\x5c") (str.to.re "-"))) (str.to.re "\x5c") re.allchar ((_ re.loop 2 6) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re "\x5c") (str.to.re "-"))) (str.to.re "\x0a"))))
(check-sat)
