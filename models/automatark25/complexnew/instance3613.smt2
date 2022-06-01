(declare-const X String)
; /counter.img\?theme\=\d+\&digits\=10\&siteId\=\d+$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/counter") re.allchar (str.to_re "img?theme=") (re.+ (re.range "0" "9")) (str.to_re "&digits=10&siteId=") (re.+ (re.range "0" "9")) (str.to_re "/Ui\u{a}")))))
; ^.*(([^\.][\.][wW][mM][aA])|([^\.][\.][mM][pP][3]))$
(assert (str.in_re X (re.++ (re.* re.allchar) (re.union (re.++ (re.comp (str.to_re ".")) (str.to_re ".") (re.union (str.to_re "w") (str.to_re "W")) (re.union (str.to_re "m") (str.to_re "M")) (re.union (str.to_re "a") (str.to_re "A"))) (re.++ (re.comp (str.to_re ".")) (str.to_re ".") (re.union (str.to_re "m") (str.to_re "M")) (re.union (str.to_re "p") (str.to_re "P")) (str.to_re "3"))) (str.to_re "\u{a}"))))
(check-sat)
