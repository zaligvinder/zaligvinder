(declare-const X String)
; (([1-9]|[0][1-9])|1[012])[- /.](([1-9]|[0][1-9])|[12][0-9]|3[01])[- /.](19|20)\d\d
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2"))) (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9"))) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "/") (str.to.re ".")) (re.union (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9"))) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "/") (str.to.re ".")) (re.union (str.to.re "19") (str.to.re "20")) (re.range "0" "9") (re.range "0" "9") (str.to.re "\x0a"))))
; ^(~?/|[a-zA-Z]:[\\/]).+
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "~")) (str.to.re "/")) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":") (re.union (str.to.re "\x5c") (str.to.re "/")))) (re.+ re.allchar) (str.to.re "\x0a"))))
; /<linearGradient[^>]*>\s*<\x2flinearGradient>/i
(assert (not (str.in.re X (re.++ (str.to.re "/<linearGradient") (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "</linearGradient>/i\x0a")))))
(check-sat)
