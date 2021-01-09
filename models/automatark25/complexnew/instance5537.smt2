(declare-const X String)
; style="[^"]*"|'[^']*'
(assert (str.in.re X (re.union (re.++ (str.to.re "style=\x22") (re.* (re.comp (str.to.re "\x22"))) (str.to.re "\x22")) (re.++ (str.to.re "'") (re.* (re.comp (str.to.re "'"))) (str.to.re "'\x0a")))))
; /filename=[^\n]*\x2eotf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".otf/i\x0a")))))
(check-sat)
