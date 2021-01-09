(declare-const X String)
; UI2Host\x3ADesktopUser-Agent\x3a\x2Fnotifier\x2F
(assert (not (str.in.re X (str.to.re "UI2Host:DesktopUser-Agent:/notifier/\x0a"))))
(check-sat)
