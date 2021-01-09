(declare-const X String)
; ^[a-zA-Z_]{1}[a-zA-Z0-9_]+$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (str.to.re "\x0a"))))
; Pass-OnthecontainsUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "Pass-OnthecontainsUser-Agent:\x0a"))))
; ((FI|HU|LU|MT|SI)-?)?[0-9]{8}
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "FI") (str.to.re "HU") (str.to.re "LU") (str.to.re "MT") (str.to.re "SI")) (re.opt (str.to.re "-")))) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2eqcp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".qcp/i\x0a"))))
; Toolbar\d+Host\x3A\d+4\x2e8\x2e4\x7D\x7BTrojan\x3Aare
(assert (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "4.8.4}{Trojan:are\x0a"))))
(check-sat)
