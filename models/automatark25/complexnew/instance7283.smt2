(declare-const X String)
; /filename=[^\n]*\x2exfdl/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xfdl/i\x0a")))))
; /(<\/?)(\w+)([^>]*>)/e
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/e\x0a<") (re.opt (str.to.re "/")) (re.* (re.comp (str.to.re ">"))) (str.to.re ">"))))
; /^.{27}/sR
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 27 27) re.allchar) (str.to.re "/sR\x0a"))))
; ^[\w]{3}(p|P|c|C|h|H|f|F|a|A|t|T|b|B|l|L|j|J|g|G)[\w][\d]{4}[\w]$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re "p") (str.to.re "P") (str.to.re "c") (str.to.re "C") (str.to.re "h") (str.to.re "H") (str.to.re "f") (str.to.re "F") (str.to.re "a") (str.to.re "A") (str.to.re "t") (str.to.re "T") (str.to.re "b") (str.to.re "B") (str.to.re "l") (str.to.re "L") (str.to.re "j") (str.to.re "J") (str.to.re "g") (str.to.re "G")) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) ((_ re.loop 4 4) (re.range "0" "9")) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (str.to.re "\x0a")))))
; /^\s+$|^$/gi
(assert (str.in.re X (re.union (re.++ (str.to.re "/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "/gi\x0a"))))
(check-sat)
