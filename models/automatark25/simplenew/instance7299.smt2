(declare-const X String)
; zzzvmkituktgr\u{2f}etie\s+WindowsAttachedPalas\u{2E}starware\u{2E}com\u{2F}dp\u{2F}search\?x=
(assert (str.in_re X (re.++ (str.to_re "zzzvmkituktgr/etie") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "WindowsAttachedPalas.starware.com/dp/search?x=\u{a}"))))
(check-sat)
