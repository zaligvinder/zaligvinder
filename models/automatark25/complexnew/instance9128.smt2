(declare-const X String)
; Host\x3AlogUser-Agent\x3AonSubject\x3A
(assert (not (str.in.re X (str.to.re "Host:logUser-Agent:onSubject:\x0a"))))
; Host\x3ATest\x3C\x2Fchat\x3EResultsSubject\x3A
(assert (str.in.re X (str.to.re "Host:Test</chat>ResultsSubject:\x0a")))
; ((\d{1,5})*\.*(\d{0,3})"[W|D|H|DIA][X|\s]).*
(assert (not (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a") (re.* ((_ re.loop 1 5) (re.range "0" "9"))) (re.* (str.to.re ".")) ((_ re.loop 0 3) (re.range "0" "9")) (str.to.re "\x22") (re.union (str.to.re "W") (str.to.re "|") (str.to.re "D") (str.to.re "H") (str.to.re "I") (str.to.re "A")) (re.union (str.to.re "X") (str.to.re "|") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))
; /filename=[^\n]*\x2eplf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".plf/i\x0a"))))
; ^((([sS]|[nN])[a-hA-Hj-zJ-Z])|(([tT]|[oO])[abfglmqrvwABFGLMQRVW])|([hH][l-zL-Z])|([jJ][lmqrvwLMQRVW]))([0-9]{2})?([0-9]{2})?([0-9]{2})?([0-9]{2})?([0-9]{2})?$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "s") (str.to.re "S") (str.to.re "n") (str.to.re "N")) (re.union (re.range "a" "h") (re.range "A" "H") (re.range "j" "z") (re.range "J" "Z"))) (re.++ (re.union (str.to.re "t") (str.to.re "T") (str.to.re "o") (str.to.re "O")) (re.union (str.to.re "a") (str.to.re "b") (str.to.re "f") (str.to.re "g") (str.to.re "l") (str.to.re "m") (str.to.re "q") (str.to.re "r") (str.to.re "v") (str.to.re "w") (str.to.re "A") (str.to.re "B") (str.to.re "F") (str.to.re "G") (str.to.re "L") (str.to.re "M") (str.to.re "Q") (str.to.re "R") (str.to.re "V") (str.to.re "W"))) (re.++ (re.union (str.to.re "h") (str.to.re "H")) (re.union (re.range "l" "z") (re.range "L" "Z"))) (re.++ (re.union (str.to.re "j") (str.to.re "J")) (re.union (str.to.re "l") (str.to.re "m") (str.to.re "q") (str.to.re "r") (str.to.re "v") (str.to.re "w") (str.to.re "L") (str.to.re "M") (str.to.re "Q") (str.to.re "R") (str.to.re "V") (str.to.re "W")))) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
