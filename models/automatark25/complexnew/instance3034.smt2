(declare-const X String)
; /filename=[^\n]*\x2escr/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".scr/i\x0a")))))
; ^[A-Za-z]{4}[ |\-]{0,1}[0-9]{6}[ |\-]{0,1}[0-9A-Za-z]{3}$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (re.union (str.to.re " ") (str.to.re "|") (str.to.re "-"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "|") (str.to.re "-"))) ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a")))))
(check-sat)
