(declare-const X String)
; /filename=[^\n]*\x2exsl/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xsl/i\x0a"))))
; ^(([a-zA-Z][a-zA-Z_$0-9]*(\.[a-zA-Z][a-zA-Z_$0-9]*)*)\.)?([a-zA-Z][a-zA-Z_$0-9]*)$
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re ".") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "$") (re.range "0" "9"))) (re.* (re.++ (str.to.re ".") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "$") (re.range "0" "9"))))))) (str.to.re "\x0a") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "$") (re.range "0" "9"))))))
(check-sat)
