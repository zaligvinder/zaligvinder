(declare-const X String)
; ('((\\.)|[^\\'])*')
(assert (not (str.in.re X (re.++ (str.to.re "\x0a'") (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (str.to.re "\x5c") (str.to.re "'"))) (str.to.re "'")))))
; /filename=[^\n]*\x2eani/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ani/i\x0a")))))
; Try2Find\x23\x23\x23\x23ToolbarServerUser\x3A
(assert (str.in.re X (str.to.re "Try2Find####ToolbarServerUser:\x0a")))
(check-sat)
