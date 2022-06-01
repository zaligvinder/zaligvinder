(declare-const X String)
; ^((\D*[a-z]\D*[A-Z]\D*)|(\D*[A-Z]\D*[a-z]\D*)|(\D*\W\D*[a-z])|(\D*\W\D*[A-Z])|(\D*[a-z]\D*\W)|(\D*[A-Z]\D*\W))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.* (re.comp (re.range "0" "9"))) (re.range "a" "z") (re.* (re.comp (re.range "0" "9"))) (re.range "A" "Z") (re.* (re.comp (re.range "0" "9")))) (re.++ (re.* (re.comp (re.range "0" "9"))) (re.range "A" "Z") (re.* (re.comp (re.range "0" "9"))) (re.range "a" "z") (re.* (re.comp (re.range "0" "9")))) (re.++ (re.* (re.comp (re.range "0" "9"))) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.comp (re.range "0" "9"))) (re.range "a" "z")) (re.++ (re.* (re.comp (re.range "0" "9"))) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.comp (re.range "0" "9"))) (re.range "A" "Z")) (re.++ (re.* (re.comp (re.range "0" "9"))) (re.range "a" "z") (re.* (re.comp (re.range "0" "9"))) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.++ (re.* (re.comp (re.range "0" "9"))) (re.range "A" "Z") (re.* (re.comp (re.range "0" "9"))) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "\u{a}")))))
; /^h=\d+&w=\d+&ua=/Psi
(assert (not (str.in_re X (re.++ (str.to_re "/h=") (re.+ (re.range "0" "9")) (str.to_re "&w=") (re.+ (re.range "0" "9")) (str.to_re "&ua=/Psi\u{a}")))))
; DaysLOGHost\u{3a}Host\u{3a}\u{7D}\u{7B}OS\u{3A}Host\u{3A}
(assert (not (str.in_re X (str.to_re "DaysLOGHost:Host:}{OS:Host:\u{a}"))))
; /filename=[^\n]*\u{2e}lzh/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".lzh/i\u{a}")))))
; /filename=[^\n]*\u{2e}tga/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".tga/i\u{a}")))))
(check-sat)
