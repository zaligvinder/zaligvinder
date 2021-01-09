(declare-const X String)
; [\w\-_\+\(\)]{0,}[\.png|\.PNG]{4}
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "-") (str.to.re "_") (str.to.re "+") (str.to.re "(") (str.to.re ")") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) ((_ re.loop 4 4) (re.union (str.to.re ".") (str.to.re "p") (str.to.re "n") (str.to.re "g") (str.to.re "|") (str.to.re "P") (str.to.re "N") (str.to.re "G"))) (str.to.re "\x0a"))))
; ^[a-zA-Z]+(([\'\,\.\- ][a-zA-Z ])?[a-zA-Z]*)*$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.++ (re.opt (re.++ (re.union (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "-") (str.to.re " ")) (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re " ")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ek3g/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".k3g/i\x0a")))))
(check-sat)
