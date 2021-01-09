(declare-const X String)
; ^[0-9]+(,[0-9]+)*$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re ",") (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; (jar:)?file:/(([A-Z]:)?/([A-Z0-9\*\()\+\-\&$#@_.!~\[\]/])+)((/[A-Z0-9_()\[\]\-=\+_~]+\.jar!)|([^!])(/com/regexlib/example/))
(assert (str.in.re X (re.++ (re.opt (str.to.re "jar:")) (str.to.re "file:/") (re.union (re.++ (str.to.re "/") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "(") (str.to.re ")") (str.to.re "[") (str.to.re "]") (str.to.re "-") (str.to.re "=") (str.to.re "+") (str.to.re "~"))) (str.to.re ".jar!")) (re.++ (re.comp (str.to.re "!")) (str.to.re "/com/regexlib/example/"))) (str.to.re "\x0a") (re.opt (re.++ (re.range "A" "Z") (str.to.re ":"))) (str.to.re "/") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "*") (str.to.re "(") (str.to.re ")") (str.to.re "+") (str.to.re "-") (str.to.re "&") (str.to.re "$") (str.to.re "#") (str.to.re "@") (str.to.re "_") (str.to.re ".") (str.to.re "!") (str.to.re "~") (str.to.re "[") (str.to.re "]") (str.to.re "/"))))))
; (\_\_)(.+)(\_\_)
(assert (not (str.in.re X (re.++ (str.to.re "__") (re.+ re.allchar) (str.to.re "__\x0a")))))
; /(A|B|AB|O)[+-]/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "A") (str.to.re "B") (str.to.re "AB") (str.to.re "O")) (re.union (str.to.re "+") (str.to.re "-")) (str.to.re "/\x0a")))))
(check-sat)
