(declare-const X String)
; /filename=[^\n]*\x2edcr/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dcr/i\x0a")))))
; \b[1-9]\d{3}\ +[A-Z]{2}\b
(assert (not (str.in.re X (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")) (re.+ (str.to.re " ")) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "\x0a")))))
; ^~/[0-9a-zA-Z_][0-9a-zA-Z/_-]*\.[0-9a-zA-Z_-]+$
(assert (str.in.re X (re.++ (str.to.re "~/") (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "_")) (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "/") (str.to.re "_") (str.to.re "-"))) (str.to.re ".") (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "-"))) (str.to.re "\x0a"))))
(check-sat)
