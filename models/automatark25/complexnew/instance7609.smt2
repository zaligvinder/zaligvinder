(declare-const X String)
; (:(6553[0-5]|655[0-2][0-9]\d|65[0-4](\d){2}|6[0-4](\d){3}|[1-5](\d){4}|[1-9](\d){0,3}))?
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re ":") (re.union (re.++ (str.to.re "6553") (re.range "0" "5")) (re.++ (str.to.re "655") (re.range "0" "2") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "65") (re.range "0" "4") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "6") (re.range "0" "4") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "5") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 0 3) (re.range "0" "9")))))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2esln/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".sln/i\x0a"))))
; ((&#[0-9]+|&[a-zA-Z]+[0-9]*?);)
(assert (str.in.re X (re.++ (str.to.re "\x0a;&") (re.union (re.++ (str.to.re "#") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.range "0" "9")))))))
(check-sat)
