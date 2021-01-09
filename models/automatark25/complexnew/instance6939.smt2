(declare-const X String)
; /\x2eafm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.afm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /filename=[^\n]*\x2eflac/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".flac/i\x0a")))))
; ([0-9]{11}$)|(^[7-9][0-9]{9}$)
(assert (str.in.re X (re.union ((_ re.loop 11 11) (re.range "0" "9")) (re.++ (str.to.re "\x0a") (re.range "7" "9") ((_ re.loop 9 9) (re.range "0" "9"))))))
; ^([0-9]{0,2})-([0-9]{0,2})-([0-9]{0,4})$
(assert (str.in.re X (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 0 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
