(declare-const X String)
; /\x2Edocument\x2EinsertBefore\s*\x28[^\x2C]+\x29/smi
(assert (str.in.re X (re.++ (str.to.re "/.document.insertBefore") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.+ (re.comp (str.to.re ","))) (str.to.re ")/smi\x0a"))))
; ^(\d{1,4}?[.]{0,1}?\d{0,3}?)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 4) (re.range "0" "9")) (re.opt (str.to.re ".")) ((_ re.loop 0 3) (re.range "0" "9"))))))
; ^[A-Z][a-z]+((eir|(n|l)h)(a|o))$
(assert (not (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a") (re.union (str.to.re "eir") (re.++ (re.union (str.to.re "n") (str.to.re "l")) (str.to.re "h"))) (re.union (str.to.re "a") (str.to.re "o"))))))
; (\/\*(\s*|.*?)*\*\/)|(\/\/.*)
(assert (str.in.re X (re.union (re.++ (str.to.re "/*") (re.* (re.union (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar))) (str.to.re "*/")) (re.++ (str.to.re "\x0a//") (re.* re.allchar)))))
; \x22Thewebsearch\.getmirar\.com
(assert (str.in.re X (str.to.re "\x22Thewebsearch.getmirar.com\x0a")))
(check-sat)
