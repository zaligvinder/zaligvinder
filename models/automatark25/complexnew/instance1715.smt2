(declare-const X String)
; [A-Za-z]{1,2}[\d]{1,2}[A-Za-z]{0,1}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a")))))
; <[iI][fF][rR][aA][mM][eE]([^>]*[^/>]*[/>]*[>])
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.union (str.to.re "i") (str.to.re "I")) (re.union (str.to.re "f") (str.to.re "F")) (re.union (str.to.re "r") (str.to.re "R")) (re.union (str.to.re "a") (str.to.re "A")) (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "e") (str.to.re "E")) (str.to.re "\x0a") (re.* (re.comp (str.to.re ">"))) (re.* (re.union (str.to.re "/") (str.to.re ">"))) (re.* (re.union (str.to.re "/") (str.to.re ">"))) (str.to.re ">")))))
; ^ *(1[0-2]|[1-9]):[0-5][0-9] *(a|p|A|P)(m|M) *$
(assert (not (str.in.re X (re.++ (re.* (str.to.re " ")) (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.range "1" "9")) (str.to.re ":") (re.range "0" "5") (re.range "0" "9") (re.* (str.to.re " ")) (re.union (str.to.re "a") (str.to.re "p") (str.to.re "A") (str.to.re "P")) (re.union (str.to.re "m") (str.to.re "M")) (re.* (str.to.re " ")) (str.to.re "\x0a")))))
; ([^a-zA-Z0-9])
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
