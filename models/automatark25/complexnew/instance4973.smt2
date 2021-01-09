(declare-const X String)
; ^1+0+$
(assert (not (str.in.re X (re.++ (re.+ (str.to.re "1")) (re.+ (str.to.re "0")) (str.to.re "\x0a")))))
; ^(\d{5}((|-)-\d{4})?)|([A-Za-z]\d[A-Za-z][\s\.\-]?(|-)\d[A-Za-z]\d)|[A-Za-z]{1,2}\d{1,2}[A-Za-z]? \d[A-Za-z]{2}$
(assert (str.in.re X (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (str.to.re "--") ((_ re.loop 4 4) (re.range "0" "9"))))) (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "-") (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9")) (re.++ ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re " ") (re.range "0" "9") ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a")))))
; /\/modules\/\d\.jar$/U
(assert (str.in.re X (re.++ (str.to.re "//modules/") (re.range "0" "9") (str.to.re ".jar/U\x0a"))))
; ([\r\n ]*//[^\r\n]*)+
(assert (str.in.re X (re.++ (re.+ (re.++ (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " "))) (str.to.re "//") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))))) (str.to.re "\x0a"))))
(check-sat)
