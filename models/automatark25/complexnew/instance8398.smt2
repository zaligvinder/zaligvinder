(declare-const X String)
; [A-Z][a-z]+
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a"))))
; ^(\w+([_.]{1}\w+)*@\w+([_.]{1}\w+)*\.[A-Za-z]{2,3}[;]?)*$
(assert (str.in.re X (re.++ (re.* (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ ((_ re.loop 1 1) (re.union (str.to.re "_") (str.to.re "."))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ ((_ re.loop 1 1) (re.union (str.to.re "_") (str.to.re "."))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re ".") ((_ re.loop 2 3) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to.re ";")))) (str.to.re "\x0a"))))
; /\/fnts\.html$/U
(assert (str.in.re X (str.to.re "//fnts.html/U\x0a")))
(check-sat)
