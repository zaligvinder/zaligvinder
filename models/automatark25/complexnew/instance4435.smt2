(declare-const X String)
; /filename=[^\n]*\x2ewmx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wmx/i\x0a")))))
; ^(BE)[0-1]{1}[0-9]{9}$|^((BE)|(BE ))[0-1]{1}(\d{3})([.]{1})(\d{3})([.]{1})(\d{3})
(assert (not (str.in.re X (re.union (re.++ (str.to.re "BE") ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (re.union (str.to.re "BE") (str.to.re "BE ")) ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))))
(check-sat)
