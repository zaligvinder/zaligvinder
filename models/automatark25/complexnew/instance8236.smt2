(declare-const X String)
; com\x2Findex\.php\?tpid=.*pop\x2Epopuptoast\x2Ecom.*Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "com/index.php?tpid=") (re.* re.allchar) (str.to.re "pop.popuptoast.com") (re.* re.allchar) (str.to.re "Host:\x0a")))))
; ^[0-9]{1}$|^[1-6]{1}[0-3]{1}$|^64$|\-[1-9]{1}$|^\-[1-6]{1}[0-3]{1}$|^\-64$
(assert (not (str.in.re X (re.union ((_ re.loop 1 1) (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "6")) ((_ re.loop 1 1) (re.range "0" "3"))) (str.to.re "64") (re.++ (str.to.re "-") ((_ re.loop 1 1) (re.range "1" "9"))) (re.++ (str.to.re "-") ((_ re.loop 1 1) (re.range "1" "6")) ((_ re.loop 1 1) (re.range "0" "3"))) (str.to.re "-64\x0a")))))
(check-sat)
