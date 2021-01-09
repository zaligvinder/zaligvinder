(declare-const X String)
; \?<.+?>
(assert (str.in.re X (re.++ (str.to.re "?<") (re.+ re.allchar) (str.to.re ">\x0a"))))
; ^(([a-h,A-H,j-n,J-N,p-z,P-Z,0-9]{9})([a-h,A-H,j-n,J-N,p,P,r-t,R-T,v-z,V-Z,0-9])([a-h,A-H,j-n,J-N,p-z,P-Z,0-9])(\d{6}))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 9 9) (re.union (re.range "a" "h") (str.to.re ",") (re.range "A" "H") (re.range "j" "n") (re.range "J" "N") (re.range "p" "z") (re.range "P" "Z") (re.range "0" "9"))) (re.union (re.range "a" "h") (str.to.re ",") (re.range "A" "H") (re.range "j" "n") (re.range "J" "N") (str.to.re "p") (str.to.re "P") (re.range "r" "t") (re.range "R" "T") (re.range "v" "z") (re.range "V" "Z") (re.range "0" "9")) (re.union (re.range "a" "h") (str.to.re ",") (re.range "A" "H") (re.range "j" "n") (re.range "J" "N") (re.range "p" "z") (re.range "P" "Z") (re.range "0" "9")) ((_ re.loop 6 6) (re.range "0" "9")))))
; /filename=[^\n]*\x2ewsz/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wsz/i\x0a")))))
; (CREATE|ALTER) +(PROCEDURE|PROC|FUNCTION|VIEW) *(\[(.*)\]|(.*))
(assert (str.in.re X (re.++ (re.union (str.to.re "CREATE") (str.to.re "ALTER")) (re.+ (str.to.re " ")) (re.union (str.to.re "PROCEDURE") (str.to.re "PROC") (str.to.re "FUNCTION") (str.to.re "VIEW")) (re.* (str.to.re " ")) (re.union (re.++ (str.to.re "[") (re.* re.allchar) (str.to.re "]")) (re.* re.allchar)) (str.to.re "\x0a"))))
(check-sat)
