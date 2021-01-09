(declare-const X String)
; /&key=[a-z0-9]{32}&dummy=\d{3,5}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/&key=") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "&dummy=") ((_ re.loop 3 5) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; ^(([a-zA-Z]\:)|(\\))(\\{1}|((\\{1})[^\\]([^/:*?<>"|]*))+)$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":")) (str.to.re "\x5c")) (re.union ((_ re.loop 1 1) (str.to.re "\x5c")) (re.+ (re.++ ((_ re.loop 1 1) (str.to.re "\x5c")) (re.comp (str.to.re "\x5c")) (re.* (re.union (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "<") (str.to.re ">") (str.to.re "\x22") (str.to.re "|")))))) (str.to.re "\x0a"))))
; /gate\x2ephp\x3freg=[a-z]{10}/U
(assert (str.in.re X (re.++ (str.to.re "/gate.php?reg=") ((_ re.loop 10 10) (re.range "a" "z")) (str.to.re "/U\x0a"))))
; \x28\x29url=http\x3A1\x2E0b3\x2EaspxWatchDogupwww\.klikvipsearch\.comNetspyt=WeHost\x3A\x2Fcgi\x2Flogurl\.cgi
(assert (str.in.re X (str.to.re "()url=http:\x1b1.0b3.aspxWatchDogupwww.klikvipsearch.comNetspyt=WeHost:/cgi/logurl.cgi\x0a")))
; ^(0{0,1}[1-9]|[12][0-9]|3[01])[- /.](0{0,1}[1-9]|1[012])[- /.](\d{2}|\d{4})$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "/") (str.to.re ".")) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "/") (str.to.re ".")) (re.union ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
