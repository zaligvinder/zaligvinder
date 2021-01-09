(declare-const X String)
; ^[A-Z]{4}[1-8](\d){2}$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "A" "Z")) (re.range "1" "8") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2eotf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".otf/i\x0a"))))
; Host\x3ATest\x3C\x2Fchat\x3EResultsSubject\x3A
(assert (str.in.re X (str.to.re "Host:Test</chat>ResultsSubject:\x0a")))
; ^<\!\-\-(.*)+(\/){0,1}\-\->$
(assert (str.in.re X (re.++ (str.to.re "<!--") (re.+ (re.* re.allchar)) (re.opt (str.to.re "/")) (str.to.re "-->\x0a"))))
; @{2}((\S)+)@{2}
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (str.to.re "@")) (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) ((_ re.loop 2 2) (str.to.re "@")) (str.to.re "\x0a")))))
(check-sat)
