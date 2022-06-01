(declare-const X String)
; as\u{2E}starware\u{2E}com.*Casino.*LOG.*FilteredHost\u{3A}e2give\.com\u{2F}newsurfer4\u{2F}
(assert (str.in_re X (re.++ (str.to_re "as.starware.com") (re.* re.allchar) (str.to_re "Casino") (re.* re.allchar) (str.to_re "LOG") (re.* re.allchar) (str.to_re "FilteredHost:e2give.com/newsurfer4/\u{a}"))))
; /[a-z0-9]{32}\.jar/
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".jar/\u{a}")))))
; (/\*[\d\D]*?\*/)|(\/\*(\s*|.*?)*\*\/)|(\/\/.*)|(/\\*[\\d\\D]*?\\*/)|([\r\n ]*//[^\r\n]*)+
(assert (str.in_re X (re.union (re.++ (str.to_re "/*") (re.* (re.union (re.range "0" "9") (re.comp (re.range "0" "9")))) (str.to_re "*/")) (re.++ (str.to_re "/*") (re.* (re.union (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar))) (str.to_re "*/")) (re.++ (str.to_re "//") (re.* re.allchar)) (re.++ (str.to_re "/") (re.* (str.to_re "\u{5c}")) (re.* (re.union (str.to_re "\u{5c}") (str.to_re "d") (str.to_re "D"))) (re.* (str.to_re "\u{5c}")) (str.to_re "/")) (re.++ (re.+ (re.++ (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re " "))) (str.to_re "//") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))))) (str.to_re "\u{a}")))))
; <[iI][mM][gG]([^>]*[^/>]*[/>]*[>])
(assert (str.in_re X (re.++ (str.to_re "<") (re.union (str.to_re "i") (str.to_re "I")) (re.union (str.to_re "m") (str.to_re "M")) (re.union (str.to_re "g") (str.to_re "G")) (str.to_re "\u{a}") (re.* (re.comp (str.to_re ">"))) (re.* (re.union (str.to_re "/") (str.to_re ">"))) (re.* (re.union (str.to_re "/") (str.to_re ">"))) (str.to_re ">"))))
(check-sat)
