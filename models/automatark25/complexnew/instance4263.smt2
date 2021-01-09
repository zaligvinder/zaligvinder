(declare-const X String)
; ^07([\d]{3})[(\D\s)]?[\d]{3}[(\D\s)]?[\d]{3}$
(assert (not (str.in.re X (re.++ (str.to.re "07") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "(") (re.comp (re.range "0" "9")) (str.to.re ")") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "(") (re.comp (re.range "0" "9")) (str.to.re ")") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2eses/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ses/i\x0a")))))
; (^(6334)[5-9](\d{11}$|\d{13,14}$))
(assert (str.in.re X (re.++ (str.to.re "\x0a6334") (re.range "5" "9") (re.union ((_ re.loop 11 11) (re.range "0" "9")) ((_ re.loop 13 14) (re.range "0" "9"))))))
; /\x2fx\x2f[0-9a-z]{8,10}\x2f[0-9a-f]{32}\x2fAA\x2f0$/U
(assert (str.in.re X (re.++ (str.to.re "//x/") ((_ re.loop 8 10) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "/AA/0/U\x0a"))))
(check-sat)
