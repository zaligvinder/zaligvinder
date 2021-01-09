(declare-const X String)
; ^[a-zA-Z]+(\.[a-zA-Z]+)+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.+ (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a"))))
; (((0[123456789]|10|11|12)(([1][9][0-9][0-9])|([2][0-9][0-9][0-9]))))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "0") (re.union (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9"))) (str.to.re "10") (str.to.re "11") (str.to.re "12")) (re.union (re.++ (str.to.re "19") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))))))
; version.*Host\x3a\s+iWonHost\x3apjpoptwql\x2frlnj
(assert (str.in.re X (re.++ (str.to.re "version") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "iWonHost:pjpoptwql/rlnj\x0a"))))
; ^[A-Z]{3}-[0-9]{4}$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; Host\x3AlogUser-Agent\x3AonSubject\x3A
(assert (not (str.in.re X (str.to.re "Host:logUser-Agent:onSubject:\x0a"))))
(check-sat)
