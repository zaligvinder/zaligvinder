(declare-const X String)
; /\/[a-f0-9]{32}\.jar/
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".jar/\x0a"))))
; /filename=[^\n]*\x2eair/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".air/i\x0a")))))
; (((\d{0,2})\(\d{3}\))|(\d{3}-))\d{3}-\d{4}\s{0,}((([Ee][xX][Tt])|([Pp][Oo][Ss][Tt][Ee])):\d{1,5}){0,1}
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.++ (re.union (re.++ (re.union (str.to.re "E") (str.to.re "e")) (re.union (str.to.re "x") (str.to.re "X")) (re.union (str.to.re "T") (str.to.re "t"))) (re.++ (re.union (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "O") (str.to.re "o")) (re.union (str.to.re "S") (str.to.re "s")) (re.union (str.to.re "T") (str.to.re "t")) (re.union (str.to.re "E") (str.to.re "e")))) (str.to.re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
