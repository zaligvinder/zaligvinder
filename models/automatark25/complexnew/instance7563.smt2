(declare-const X String)
; /filename=[^\n]*\x2expm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xpm/i\x0a"))))
; url=http\x3AGamespyjspIDENTIFYserverHOST\x3ASubject\x3A
(assert (str.in.re X (str.to.re "url=http:\x1bGamespyjspIDENTIFYserverHOST:Subject:\x0a")))
; (^[a-fA-F]+[+-]?$)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.union (re.range "a" "f") (re.range "A" "F"))) (re.opt (re.union (str.to.re "+") (str.to.re "-"))))))
; ^(\(\d{3}\)[- ]?|\d{3}[- ])?\d{3}[- ]\d{4}$
(assert (str.in.re X (re.++ (re.opt (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") (re.opt (re.union (str.to.re "-") (str.to.re " ")))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " "))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
