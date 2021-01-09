(declare-const X String)
; "^[A-Z]{1}\d{7}$
(assert (not (str.in.re X (re.++ (str.to.re "\x22") ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2emet/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".met/i\x0a"))))
; /\.php\?hgfc\=[a-f0-9]+$/U
(assert (str.in.re X (re.++ (str.to.re "/.php?hgfc=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
(check-sat)
