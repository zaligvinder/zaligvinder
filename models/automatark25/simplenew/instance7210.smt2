(declare-const X String)
; XPPreUser-Agent\u{3A}RemoteYOURsqlStarLoggerclvompycem\u{2f}cen\.vcn
(assert (not (str.in_re X (str.to_re "XPPreUser-Agent:RemoteYOURsqlStarLoggerclvompycem/cen.vcn\u{a}"))))
(check-sat)
