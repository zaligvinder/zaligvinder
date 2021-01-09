(declare-const X String)
; /filename=[^\n]*\x2ebmp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".bmp/i\x0a"))))
; (^[A-Za-z])|(\s)([A-Za-z])
(assert (str.in.re X (re.union (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.union (re.range "A" "Z") (re.range "a" "z")) (str.to.re "\x0a")) (re.range "A" "Z") (re.range "a" "z"))))
; (jar:)?file:/(([A-Z]:)?/([A-Z0-9\*\()\+\-\&$#@_.!~\[\]/])+)((/[A-Z0-9_()\[\]\-=\+_~]+\.jar!)|([^!])(/com/regexlib/example/))
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "jar:")) (str.to.re "file:/") (re.union (re.++ (str.to.re "/") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "(") (str.to.re ")") (str.to.re "[") (str.to.re "]") (str.to.re "-") (str.to.re "=") (str.to.re "+") (str.to.re "~"))) (str.to.re ".jar!")) (re.++ (re.comp (str.to.re "!")) (str.to.re "/com/regexlib/example/"))) (str.to.re "\x0a") (re.opt (re.++ (re.range "A" "Z") (str.to.re ":"))) (str.to.re "/") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "*") (str.to.re "(") (str.to.re ")") (str.to.re "+") (str.to.re "-") (str.to.re "&") (str.to.re "$") (str.to.re "#") (str.to.re "@") (str.to.re "_") (str.to.re ".") (str.to.re "!") (str.to.re "~") (str.to.re "[") (str.to.re "]") (str.to.re "/")))))))
; ^04[0-9]{8}
(assert (not (str.in.re X (re.++ (str.to.re "04") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
