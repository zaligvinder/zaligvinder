(declare-const X String)
; User-Agent\x3AHost\x3a\x22The
(assert (str.in.re X (str.to.re "User-Agent:Host:\x22The\x0a")))
; ^[\w_.]{5,12}$
(assert (str.in.re X (re.++ ((_ re.loop 5 12) (re.union (str.to.re "_") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
; /setup=[a-z]\&s=\d\&r=\d{5}$/Ui
(assert (str.in.re X (re.++ (str.to.re "/setup=") (re.range "a" "z") (str.to.re "&s=") (re.range "0" "9") (str.to.re "&r=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
; <[^>]*?>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a")))))
(check-sat)
