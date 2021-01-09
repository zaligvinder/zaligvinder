(declare-const X String)
; /filename=[^\n]*\x2ejmh/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jmh/i\x0a"))))
; [a-zA-Z]*( [a-zA-Z]*)?
(assert (not (str.in.re X (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.++ (str.to.re " ") (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a")))))
(check-sat)
