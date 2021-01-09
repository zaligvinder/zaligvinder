(declare-const X String)
; ^([1-9]+[0-9]* | [1-9])$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re " ") (re.range "1" "9"))) (str.to.re "\x0a")))))
; /file=[\x7c\x27]/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/file=") (re.union (str.to.re "|") (str.to.re "'")) (str.to.re "/Ui\x0a")))))
(check-sat)
