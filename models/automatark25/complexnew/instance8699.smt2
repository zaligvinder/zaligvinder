(declare-const X String)
; /filename=[^\n]*\x2em4a/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4a/i\x0a")))))
; ^((\(\d{3}\) ?)|(\d{3}-)|(\(\d{2}\) ?)|(\d{2}-)|(\(\d{1}\) ?)|(\d{1}-))?\d{3}-(\d{3}|\d{4})
(assert (str.in.re X (re.++ (re.opt (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") (re.opt (str.to.re " "))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-")) (re.++ (str.to.re "(") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ")") (re.opt (str.to.re " "))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-")) (re.++ (str.to.re "(") ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re ")") (re.opt (str.to.re " "))) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "-")))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "\x0a"))))
; User-Agent\x3A\s+Host\x3A[^\n\r]*Hourspjpoptwql\x2frlnjFrom\x3Asbver\x3aGhost
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Hourspjpoptwql/rlnjFrom:sbver:Ghost\x13\x0a")))))
(check-sat)
