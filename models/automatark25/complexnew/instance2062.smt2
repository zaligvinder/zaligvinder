(declare-const X String)
; Host\x3A\s+\.ico\s+Host\x3Aorigin\x3Dsidefind
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ".ico") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:origin=sidefind\x0a")))))
; .*[\$Ss]pecia[l1]\W[Oo0]ffer.*
(assert (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "$") (str.to.re "S") (str.to.re "s")) (str.to.re "pecia") (re.union (str.to.re "l") (str.to.re "1")) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re "O") (str.to.re "o") (str.to.re "0")) (str.to.re "ffer") (re.* re.allchar) (str.to.re "\x0a"))))
; Points\d+Host\x3a\stoBasicwww\x2Ewebcruiser\x2Ecc
(assert (not (str.in.re X (re.++ (str.to.re "Points") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toBasicwww.webcruiser.cc\x0a")))))
; style="[^"]*"|'[^']*'
(assert (not (str.in.re X (re.union (re.++ (str.to.re "style=\x22") (re.* (re.comp (str.to.re "\x22"))) (str.to.re "\x22")) (re.++ (str.to.re "'") (re.* (re.comp (str.to.re "'"))) (str.to.re "'\x0a"))))))
(check-sat)
