(declare-const X String)
; /\x26uid\x3d[a-f0-9]{16}($|\x26)/U
(assert (str.in.re X (re.++ (str.to.re "/&uid=") ((_ re.loop 16 16) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "&/U\x0a"))))
; /filename=[^\n]*\x2epor/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".por/i\x0a"))))
; ^([a-zA-Z,#/ \.\(\)\-\+\*]*[2-9])([a-zA-Z,#/ \.\(\)\-\+\*]*[0-9]){2}([a-zA-Z,#/ \.\(\)\-\+\*]*[2-9])([a-zA-Z,#/ \.\(\)\-\+\*]*[0-9]){6}[0-9a-zA-Z,#/ \.\(\)\-\+\*]*$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re ",") (str.to.re "#") (str.to.re "/") (str.to.re " ") (str.to.re ".") (str.to.re "(") (str.to.re ")") (str.to.re "-") (str.to.re "+") (str.to.re "*"))) (re.range "0" "9"))) ((_ re.loop 6 6) (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re ",") (str.to.re "#") (str.to.re "/") (str.to.re " ") (str.to.re ".") (str.to.re "(") (str.to.re ")") (str.to.re "-") (str.to.re "+") (str.to.re "*"))) (re.range "0" "9"))) (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re ",") (str.to.re "#") (str.to.re "/") (str.to.re " ") (str.to.re ".") (str.to.re "(") (str.to.re ")") (str.to.re "-") (str.to.re "+") (str.to.re "*"))) (str.to.re "\x0a") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re ",") (str.to.re "#") (str.to.re "/") (str.to.re " ") (str.to.re ".") (str.to.re "(") (str.to.re ")") (str.to.re "-") (str.to.re "+") (str.to.re "*"))) (re.range "2" "9") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re ",") (str.to.re "#") (str.to.re "/") (str.to.re " ") (str.to.re ".") (str.to.re "(") (str.to.re ")") (str.to.re "-") (str.to.re "+") (str.to.re "*"))) (re.range "2" "9"))))
; /\x3Fp\x3D[0-9]{1,10}\x26d\x3D/U
(assert (str.in.re X (re.++ (str.to.re "/?p=") ((_ re.loop 1 10) (re.range "0" "9")) (str.to.re "&d=/U\x0a"))))
; protocol\s+3A\s+data2\.activshopper\.comUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "protocol") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "3A") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "data2.activshopper.comUser-Agent:\x0a"))))
(check-sat)
