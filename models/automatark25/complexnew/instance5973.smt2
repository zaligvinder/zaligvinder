(declare-const X String)
; /\x2ejmh([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.jmh") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^[0-9A-Za-z_ ]+(.[jJ][pP][gG]|.[gG][iI][fF])$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " "))) (str.to.re "\x0a") re.allchar (re.union (re.++ (re.union (str.to.re "j") (str.to.re "J")) (re.union (str.to.re "p") (str.to.re "P")) (re.union (str.to.re "g") (str.to.re "G"))) (re.++ (re.union (str.to.re "g") (str.to.re "G")) (re.union (str.to.re "i") (str.to.re "I")) (re.union (str.to.re "f") (str.to.re "F"))))))))
(check-sat)
