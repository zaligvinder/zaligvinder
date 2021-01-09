(declare-const X String)
; User-Agent\x3A\w+www\x2Etopadwarereviews\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www.topadwarereviews.com\x0a")))))
; /filename=[^\n]*\x2ecsv/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".csv/i\x0a")))))
; ^[a-zA-Z]$
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re "\x0a")))))
; CZ\d{2}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{4}|CZ\d{22}
(assert (str.in.re X (re.++ (str.to.re "CZ") (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 22 22) (re.range "0" "9")) (str.to.re "\x0a"))))))
; ([oO0]*)([|:;=X^])([-']*)([)(oO0\]\[DPp*>X^@])
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "o") (str.to.re "O") (str.to.re "0"))) (re.union (str.to.re "|") (str.to.re ":") (str.to.re ";") (str.to.re "=") (str.to.re "X") (str.to.re "^")) (re.* (re.union (str.to.re "-") (str.to.re "'"))) (re.union (str.to.re ")") (str.to.re "(") (str.to.re "o") (str.to.re "O") (str.to.re "0") (str.to.re "]") (str.to.re "[") (str.to.re "D") (str.to.re "P") (str.to.re "p") (str.to.re "*") (str.to.re ">") (str.to.re "X") (str.to.re "^") (str.to.re "@")) (str.to.re "\x0a")))))
(check-sat)
