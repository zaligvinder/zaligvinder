(declare-const X String)
; ^[0-9,+,(), ,]{1,}(,[0-9]+){0,}$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to.re ",") (str.to.re "+") (str.to.re "(") (str.to.re ")") (str.to.re " "))) (re.* (re.++ (str.to.re ",") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; [a-z]{1}[a-z0-9\-_\.]{2,24}@tlen\.pl
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "a" "z")) ((_ re.loop 2 24) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "_") (str.to.re "."))) (str.to.re "@tlen.pl\x0a"))))
; /filename=[^\n]*\x2efdf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".fdf/i\x0a")))))
; /filename=[^\n]*\x2exml/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xml/i\x0a")))))
(check-sat)
