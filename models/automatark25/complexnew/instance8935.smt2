(declare-const X String)
; <[iI][fF][rR][aA][mM][eE]([^>]*[^/>]*[/>]*[>])
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.union (str.to.re "i") (str.to.re "I")) (re.union (str.to.re "f") (str.to.re "F")) (re.union (str.to.re "r") (str.to.re "R")) (re.union (str.to.re "a") (str.to.re "A")) (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "e") (str.to.re "E")) (str.to.re "\x0a") (re.* (re.comp (str.to.re ">"))) (re.* (re.union (str.to.re "/") (str.to.re ">"))) (re.* (re.union (str.to.re "/") (str.to.re ">"))) (str.to.re ">")))))
; ^[AHJ-NPR-UW-Z]{2}\s?[0-9]{3}\s?[AHJ-NPR-UW-Z]{2}$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (str.to.re "A") (str.to.re "H") (re.range "J" "N") (str.to.re "P") (re.range "R" "U") (re.range "W" "Z"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (str.to.re "A") (str.to.re "H") (re.range "J" "N") (str.to.re "P") (re.range "R" "U") (re.range "W" "Z"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2edir/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dir/i\x0a")))))
(check-sat)
