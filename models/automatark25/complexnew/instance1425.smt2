(declare-const X String)
; ^([1-9]+[0-9]* | [1-9])$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.range "1" "9"))) (str.to_re "\u{a}")))))
; /file=[\u{7c}\u{27}]/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/file=") (re.union (str.to_re "|") (str.to_re "'")) (str.to_re "/Ui\u{a}")))))
(check-sat)
