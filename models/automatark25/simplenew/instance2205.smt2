(declare-const X String)
; ProxyDownCurrentUser-Agent\u{3A}Host\u{3A}com\u{2F}index\.php\?tpid=
(assert (not (str.in_re X (str.to_re "ProxyDownCurrentUser-Agent:Host:com/index.php?tpid=\u{a}"))))
(check-sat)
