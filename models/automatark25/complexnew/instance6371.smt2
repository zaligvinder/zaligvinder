(declare-const X String)
; ^[A-Za-z0-9_]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "_"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2escr/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".scr/i\x0a")))))
(check-sat)
