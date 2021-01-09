(declare-const X String)
; /filename=[^\n]*\x2emid/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mid/i\x0a"))))
; emailFrom\x3AUser-Agent\x3AUser-Agent\x3Aselect\x2FGet
(assert (not (str.in.re X (str.to.re "emailFrom:User-Agent:User-Agent:select/Get\x0a"))))
; ^[a-zA-Z]+(\.[a-zA-Z]+)+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.+ (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a"))))
(check-sat)
