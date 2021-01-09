(declare-const X String)
; /filename=[^\n]*\x2ehtc/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".htc/i\x0a"))))
; /\x2ejpg([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.jpg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; (\$\s*[\d,]+\.\d{2})\b
(assert (str.in.re X (re.++ (str.to.re "\x0a$") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.union (re.range "0" "9") (str.to.re ","))) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))))
; ^\d*[1-9]\d*$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.range "1" "9") (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
