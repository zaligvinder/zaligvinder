(declare-const X String)
; /\x2Epor([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.por") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /\/count\d{2}\.php$/U
(assert (str.in.re X (re.++ (str.to.re "//count") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ".php/U\x0a"))))
; (^\-|\+)?([1-9]{1}[0-9]{0,2}(\,\d{3})*|[1-9]{1}\d{0,})$|^0?$
(assert (not (str.in.re X (re.union (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9"))))) (re.++ (re.opt (str.to.re "0")) (str.to.re "\x0a"))))))
(check-sat)
