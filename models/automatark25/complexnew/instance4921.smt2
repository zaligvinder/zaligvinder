(declare-const X String)
; /\u{26}uid\u{3d}[a-f0-9]{16}($|\u{26})/U
(assert (str.in_re X (re.++ (str.to_re "/&uid=") ((_ re.loop 16 16) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "&/U\u{a}"))))
; /filename=[^\n]*\u{2e}por/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".por/i\u{a}"))))
; ^([a-zA-Z,#/ \.\(\)\-\+\*]*[2-9])([a-zA-Z,#/ \.\(\)\-\+\*]*[0-9]){2}([a-zA-Z,#/ \.\(\)\-\+\*]*[2-9])([a-zA-Z,#/ \.\(\)\-\+\*]*[0-9]){6}[0-9a-zA-Z,#/ \.\(\)\-\+\*]*$
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re ",") (str.to_re "#") (str.to_re "/") (str.to_re " ") (str.to_re ".") (str.to_re "(") (str.to_re ")") (str.to_re "-") (str.to_re "+") (str.to_re "*"))) (re.range "0" "9"))) ((_ re.loop 6 6) (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re ",") (str.to_re "#") (str.to_re "/") (str.to_re " ") (str.to_re ".") (str.to_re "(") (str.to_re ")") (str.to_re "-") (str.to_re "+") (str.to_re "*"))) (re.range "0" "9"))) (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to_re ",") (str.to_re "#") (str.to_re "/") (str.to_re " ") (str.to_re ".") (str.to_re "(") (str.to_re ")") (str.to_re "-") (str.to_re "+") (str.to_re "*"))) (str.to_re "\u{a}") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re ",") (str.to_re "#") (str.to_re "/") (str.to_re " ") (str.to_re ".") (str.to_re "(") (str.to_re ")") (str.to_re "-") (str.to_re "+") (str.to_re "*"))) (re.range "2" "9") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re ",") (str.to_re "#") (str.to_re "/") (str.to_re " ") (str.to_re ".") (str.to_re "(") (str.to_re ")") (str.to_re "-") (str.to_re "+") (str.to_re "*"))) (re.range "2" "9"))))
; /\u{3F}p\u{3D}[0-9]{1,10}\u{26}d\u{3D}/U
(assert (str.in_re X (re.++ (str.to_re "/?p=") ((_ re.loop 1 10) (re.range "0" "9")) (str.to_re "&d=/U\u{a}"))))
; protocol\s+3A\s+data2\.activshopper\.comUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "protocol") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "3A") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "data2.activshopper.comUser-Agent:\u{a}"))))
(check-sat)
