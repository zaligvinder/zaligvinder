(declare-const X String)
; \x2Fimages\x2Fnocache\x2Ftr\x2Fgca\x2Fm\.gif\?
(assert (not (str.in.re X (str.to.re "/images/nocache/tr/gca/m.gif?\x0a"))))
; ([Cc][Hh][Aa][Nn][Dd][Aa][Nn].*?)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (str.to.re "C") (str.to.re "c")) (re.union (str.to.re "H") (str.to.re "h")) (re.union (str.to.re "A") (str.to.re "a")) (re.union (str.to.re "N") (str.to.re "n")) (re.union (str.to.re "D") (str.to.re "d")) (re.union (str.to.re "A") (str.to.re "a")) (re.union (str.to.re "N") (str.to.re "n")) (re.* re.allchar))))
; /\x2ejfif([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.jfif") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^((\d{5}-?\d{4})|(\d{5})|([A-Za-z]\d[A-Za-z]\s?\d[A-Za-z]\d))$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
