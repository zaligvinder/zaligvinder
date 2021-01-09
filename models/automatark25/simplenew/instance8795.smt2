(declare-const X String)
; /file=[\x7c\x27]/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/file=") (re.union (str.to.re "|") (str.to.re "'")) (str.to.re "/Ui\x0a")))))
(check-sat)
