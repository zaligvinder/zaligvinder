(declare-const X String)
; Host\x3a[^\n\r]*pgwtjgxwthx\x2fbyb\.xky[^\n\r]*source%3Dultrasearch136%26campaign%3Dsnap
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "pgwtjgxwthx/byb.xky") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "source%3Dultrasearch136%26campaign%3Dsnap\x0a"))))
; Referer\x3A.*User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Referer:") (re.* re.allchar) (str.to.re "User-Agent:\x0a"))))
; ^([51|52|53|54|55]{2})([0-9]{14})$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (str.to.re "5") (str.to.re "1") (str.to.re "|") (str.to.re "2") (str.to.re "3") (str.to.re "4"))) ((_ re.loop 14 14) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^\d{1,8}$|^\d{1,3},\d{3}$|^\d{1,2},\d{3},\d{3}$
(assert (not (str.in.re X (re.union ((_ re.loop 1 8) (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))))
(check-sat)
