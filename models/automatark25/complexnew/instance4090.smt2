(declare-const X String)
; /click.php\?c=\w{160}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/click") re.allchar (str.to.re "php?c=") ((_ re.loop 160 160) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/Ui\x0a")))))
; ^\({0,1}0(2|3|7|8)\){0,1}(\ |-){0,1}[0-9]{4}(\ |-){0,1}[0-9]{4}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "(")) (str.to.re "0") (re.union (str.to.re "2") (str.to.re "3") (str.to.re "7") (str.to.re "8")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
