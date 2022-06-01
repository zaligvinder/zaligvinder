(declare-const X String)
; /\u{2E}document\u{2E}insertBefore\s*\u{28}[^\u{2C}]+\u{29}/smi
(assert (str.in_re X (re.++ (str.to_re "/.document.insertBefore") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.+ (re.comp (str.to_re ","))) (str.to_re ")/smi\u{a}"))))
; ^(\d{1,4}?[.]{0,1}?\d{0,3}?)$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 1 4) (re.range "0" "9")) (re.opt (str.to_re ".")) ((_ re.loop 0 3) (re.range "0" "9"))))))
; ^[A-Z][a-z]+((eir|(n|l)h)(a|o))$
(assert (not (str.in_re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to_re "\u{a}") (re.union (str.to_re "eir") (re.++ (re.union (str.to_re "n") (str.to_re "l")) (str.to_re "h"))) (re.union (str.to_re "a") (str.to_re "o"))))))
; (\/\*(\s*|.*?)*\*\/)|(\/\/.*)
(assert (str.in_re X (re.union (re.++ (str.to_re "/*") (re.* (re.union (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar))) (str.to_re "*/")) (re.++ (str.to_re "\u{a}//") (re.* re.allchar)))))
; \u{22}Thewebsearch\.getmirar\.com
(assert (str.in_re X (str.to_re "\u{22}Thewebsearch.getmirar.com\u{a}")))
(check-sat)
