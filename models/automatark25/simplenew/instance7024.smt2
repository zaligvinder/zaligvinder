(declare-const X String)
; User-Agent\x3AUser-Agent\x3Awww\.take5bingo\.comUser-Agent\x3A
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:www.take5bingo.com\x1bUser-Agent:\x0a")))
(check-sat)
