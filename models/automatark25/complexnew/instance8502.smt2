(declare-const X String)
; ^([\w-]+\.)*?[\w-]+@[\w-]+\.([\w-]+\.)*?[\w]+$
(assert (str.in.re X (re.++ (re.* (re.++ (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "."))) (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") (re.* (re.++ (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "."))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
; /m.php\?do=(getvers|status|getcmd)/Ui
(assert (str.in.re X (re.++ (str.to.re "/m") re.allchar (str.to.re "php?do=") (re.union (str.to.re "getvers") (str.to.re "status") (str.to.re "getcmd")) (str.to.re "/Ui\x0a"))))
(check-sat)
