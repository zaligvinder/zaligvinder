(declare-const X String)
; ProxyDownCurrentUser-Agent\u{3A}Host\u{3A}com\u{2F}index\.php\?tpid=
(assert (not (str.in_re X (str.to_re "ProxyDownCurrentUser-Agent:Host:com/index.php?tpid=\u{a}"))))
; Host\u{3A}User-Agent\u{3a}Host\u{3A}PortScaner
(assert (not (str.in_re X (str.to_re "Host:User-Agent:Host:PortScaner\u{a}"))))
(check-sat)
