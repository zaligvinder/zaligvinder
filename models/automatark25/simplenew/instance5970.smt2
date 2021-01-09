(declare-const X String)
; myway\.comzmnjgmomgbdz\x2fzzmw\.gztUser-Agent\x3A
(assert (str.in.re X (str.to.re "myway.comzmnjgmomgbdz/zzmw.gztUser-Agent:\x0a")))
(check-sat)
