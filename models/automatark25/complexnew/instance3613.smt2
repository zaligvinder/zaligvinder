(declare-const X String)
; /counter.img\?theme\=\d+\&digits\=10\&siteId\=\d+$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/counter") re.allchar (str.to.re "img?theme=") (re.+ (re.range "0" "9")) (str.to.re "&digits=10&siteId=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; ^.*(([^\.][\.][wW][mM][aA])|([^\.][\.][mM][pP][3]))$
(assert (str.in.re X (re.++ (re.* re.allchar) (re.union (re.++ (re.comp (str.to.re ".")) (str.to.re ".") (re.union (str.to.re "w") (str.to.re "W")) (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "a") (str.to.re "A"))) (re.++ (re.comp (str.to.re ".")) (str.to.re ".") (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "p") (str.to.re "P")) (str.to.re "3"))) (str.to.re "\x0a"))))
(check-sat)
