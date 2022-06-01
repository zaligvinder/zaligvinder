(declare-const X String)
; SpyBuddySubject\u{3A}stats\u{2e}drivecleaner\u{2e}com
(assert (not (str.in_re X (str.to_re "SpyBuddySubject:stats.drivecleaner.com\u{13}\u{a}"))))
(check-sat)
