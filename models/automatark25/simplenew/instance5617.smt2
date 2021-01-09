(declare-const X String)
; com\x2Findex\.php\?tpid=.*pop\x2Epopuptoast\x2Ecom.*Host\x3A
(assert (str.in.re X (re.++ (str.to.re "com/index.php?tpid=") (re.* re.allchar) (str.to.re "pop.popuptoast.com") (re.* re.allchar) (str.to.re "Host:\x0a"))))
(check-sat)
