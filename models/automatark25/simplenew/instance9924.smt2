(declare-const X String)
; http\x3A\x2F\x2Fmysearch\.dropspam\.com\x2Findex\.php\?tpid=
(assert (not (str.in.re X (str.to.re "http://mysearch.dropspam.com/index.php?tpid=\x13\x0a"))))
(check-sat)
