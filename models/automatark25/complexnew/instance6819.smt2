(declare-const X String)
; (((\d{0,2})\(\d{3}\))|(\d{3}-))\d{3}-\d{4}\s{0,}((([Ee][xX][Tt])|([Pp][Oo][Ss][Tt][Ee])):\d{1,5}){0,1}
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.++ (re.union (re.++ (re.union (str.to.re "E") (str.to.re "e")) (re.union (str.to.re "x") (str.to.re "X")) (re.union (str.to.re "T") (str.to.re "t"))) (re.++ (re.union (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "O") (str.to.re "o")) (re.union (str.to.re "S") (str.to.re "s")) (re.union (str.to.re "T") (str.to.re "t")) (re.union (str.to.re "E") (str.to.re "e")))) (str.to.re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ((^\d{5}$)|(^\d{8}$))|(^\d{5}-\d{3}$)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "\x0a") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 8 8) (re.range "0" "9"))))))
; /^[a-z]{5}\d=_\d_/C
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 5 5) (re.range "a" "z")) (re.range "0" "9") (str.to.re "=_") (re.range "0" "9") (str.to.re "_/C\x0a")))))
(check-sat)
