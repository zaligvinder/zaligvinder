(declare-const X String)
; User-Agent\x3AUser-Agent\x3aURLencoderthis\x7CConnected
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:URLencoderthis|Connected\x0a")))
(check-sat)
