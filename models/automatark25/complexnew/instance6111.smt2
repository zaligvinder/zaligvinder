(declare-const X String)
; ('((\\.)|[^\\'])*')
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}'") (re.* (re.union (re.++ (str.to_re "\u{5c}") re.allchar) (str.to_re "\u{5c}") (str.to_re "'"))) (str.to_re "'")))))
; /filename=[^\n]*\u{2e}ani/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ani/i\u{a}")))))
; Try2Find\u{23}\u{23}\u{23}\u{23}ToolbarServerUser\u{3A}
(assert (str.in_re X (str.to_re "Try2Find####ToolbarServerUser:\u{a}")))
(check-sat)
