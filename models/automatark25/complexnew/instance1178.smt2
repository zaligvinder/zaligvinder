(declare-const X String)
; www\u{2E}onlinecasinoextra\u{2E}comsearchreslt\u{7D}\u{7B}Sysuptime\u{3A}
(assert (str.in_re X (str.to_re "www.onlinecasinoextra.comsearchreslt}{Sysuptime:\u{a}")))
; forum=From\u{3a}comTencentTravelerBackAtTaCkExplorer
(assert (str.in_re X (str.to_re "forum=From:comTencentTravelerBackAtTaCkExplorer\u{a}")))
; passcorrect\u{3B}\s+\u{2F}cbn\u{2F}node=Host\u{3A}\u{3F}search\u{3D}version
(assert (str.in_re X (re.++ (str.to_re "passcorrect;") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cbn/node=Host:?search=version\u{a}"))))
(check-sat)
