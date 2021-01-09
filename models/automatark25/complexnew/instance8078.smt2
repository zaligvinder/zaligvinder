(declare-const X String)
; ^[SFTG]\d{7}[A-Z]$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "S") (str.to.re "F") (str.to.re "T") (str.to.re "G")) ((_ re.loop 7 7) (re.range "0" "9")) (re.range "A" "Z") (str.to.re "\x0a")))))
; ^[a-zA-Z]{4}\d{6}[a-zA-Z]{6}\d{2}$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 6 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; [^A-Za-z0-9 ]
(assert (not (str.in.re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re " ")) (str.to.re "\x0a")))))
; /\.js\/\?[a-z]+\=[a-z]{1,4}/R
(assert (not (str.in.re X (re.++ (str.to.re "/.js/?") (re.+ (re.range "a" "z")) (str.to.re "=") ((_ re.loop 1 4) (re.range "a" "z")) (str.to.re "/R\x0a")))))
; hg diff --nodates | egrep -e "---" -v | egrep -e "^-" -c
(assert (not (str.in.re X (re.union (str.to.re "hg diff --nodates ") (str.to.re " egrep -e \x22---\x22 -v ") (str.to.re " egrep -e \x22-\x22 -c\x0a")))))
(check-sat)
