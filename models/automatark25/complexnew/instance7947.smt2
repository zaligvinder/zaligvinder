(declare-const X String)
; ^[A-Z]{4}[1-8](\d){2}$
(assert (str.in_re X (re.++ ((_ re.loop 4 4) (re.range "A" "Z")) (re.range "1" "8") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}"))))
; /filename=[^\n]*\u{2e}otf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".otf/i\u{a}"))))
; Host\u{3A}Test\u{3C}\u{2F}chat\u{3E}ResultsSubject\u{3A}
(assert (str.in_re X (str.to_re "Host:Test</chat>ResultsSubject:\u{a}")))
; ^<\!\-\-(.*)+(\/){0,1}\-\->$
(assert (str.in_re X (re.++ (str.to_re "<!--") (re.+ (re.* re.allchar)) (re.opt (str.to_re "/")) (str.to_re "-->\u{a}"))))
; @{2}((\S)+)@{2}
(assert (not (str.in_re X (re.++ ((_ re.loop 2 2) (str.to_re "@")) (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) ((_ re.loop 2 2) (str.to_re "@")) (str.to_re "\u{a}")))))
(check-sat)
