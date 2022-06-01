(declare-const X String)
; \u{5C}home\/lordofsearchToolbar\u{22}StarLogger\u{22}
(assert (str.in_re X (str.to_re "\u{5c}home/lordofsearchToolbar\u{22}StarLogger\u{22}\u{a}")))
; XPPreUser-Agent\u{3A}RemoteYOURsqlStarLoggerclvompycem\u{2f}cen\.vcn
(assert (str.in_re X (str.to_re "XPPreUser-Agent:RemoteYOURsqlStarLoggerclvompycem/cen.vcn\u{a}")))
(check-sat)
