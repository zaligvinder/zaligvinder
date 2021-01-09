(declare-const X String)
; XPPreUser-Agent\x3ARemoteYOURsqlStarLoggerclvompycem\x2fcen\.vcn
(assert (str.in.re X (str.to.re "XPPreUser-Agent:RemoteYOURsqlStarLoggerclvompycem/cen.vcn\x0a")))
(check-sat)
