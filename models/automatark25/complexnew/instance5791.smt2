(declare-const X String)
; /\/\d+\.mp3$/U
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "0" "9")) (str.to.re ".mp3/U\x0a"))))
; /filename=[^\n]*\x2epdf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pdf/i\x0a")))))
; [a-zA-Z][a-zA-Z0-9_\-\,\.]{5,31}
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 5 31) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re ",") (str.to.re "."))) (str.to.re "\x0a")))))
(check-sat)
