(declare-const X String)
; http\u{3A}\u{2F}\u{2F}mysearch\.dropspam\.com\u{2F}index\.php\?tpid=
(assert (str.in_re X (str.to_re "http://mysearch.dropspam.com/index.php?tpid=\u{13}\u{a}")))
(check-sat)
