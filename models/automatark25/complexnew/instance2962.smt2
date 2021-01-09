(declare-const X String)
; \x5Chome\/lordofsearchToolbar\x22StarLogger\x22
(assert (str.in.re X (str.to.re "\x5chome/lordofsearchToolbar\x22StarLogger\x22\x0a")))
; XPPreUser-Agent\x3ARemoteYOURsqlStarLoggerclvompycem\x2fcen\.vcn
(assert (str.in.re X (str.to.re "XPPreUser-Agent:RemoteYOURsqlStarLoggerclvompycem/cen.vcn\x0a")))
(check-sat)
