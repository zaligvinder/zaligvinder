(declare-const X String)
; \x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax
(assert (str.in.re X (str.to.re "\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax\x0a")))
; /xsl\x3Atemplate[^\x3E]*priority\s*\x3D[\s\x22\x27]*[\d\x2D]*[^\s\x22\x27\d\x2d]/smi
(assert (str.in.re X (re.++ (str.to.re "/xsl:template") (re.* (re.comp (str.to.re ">"))) (str.to.re "priority") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (re.range "0" "9") (str.to.re "-"))) (re.union (str.to.re "\x22") (str.to.re "'") (re.range "0" "9") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/smi\x0a"))))
; /filename=[^\n]*\x2ertf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rtf/i\x0a"))))
; [A-Za-z](\.[A-Za-z0-9]|\-[A-Za-z0-9]|_[A-Za-z0-9]|[A-Za-z0-9][A-Za-z0-9])(\.[A-Za-z0-9]|\-[A-Za-z0-9]|_[A-Za-z0-9]|[A-Za-z0-9])*
(assert (not (str.in.re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.union (re.++ (str.to.re ".") (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.++ (str.to.re "-") (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.++ (str.to.re "_") (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")))) (re.* (re.union (re.++ (str.to.re ".") (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.++ (str.to.re "-") (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.++ (str.to.re "_") (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; /\&k=\d+($|\&h=)/U
(assert (not (str.in.re X (re.++ (str.to.re "/&k=") (re.+ (re.range "0" "9")) (str.to.re "&h=/U\x0a")))))
(check-sat)
