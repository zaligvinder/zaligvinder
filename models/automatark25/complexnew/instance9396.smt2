(declare-const X String)
; ^\d*[0-9](|.\d*[0-9]|)*$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.range "0" "9") (re.* (re.++ re.allchar (re.* (re.range "0" "9")) (re.range "0" "9"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2eapk/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".apk/i\x0a"))))
; /filename=[^\n]*\x2eplf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".plf/i\x0a"))))
; ^[-+]?[0-9]+[.]?[0-9]*([eE][-+]?[0-9]+)?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.+ (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re "e") (str.to.re "E")) (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; /\x2ebcl([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.bcl") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
