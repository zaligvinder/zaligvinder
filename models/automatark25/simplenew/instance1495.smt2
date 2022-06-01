(declare-const X String)
; to=\u{2F}ezsb\s\u{3A}hirmvtg\u{2f}ggqh\.kqhSPYzzzvmkituktgr\u{2f}etie
(assert (not (str.in_re X (re.++ (str.to_re "to=/ezsb") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re ":hirmvtg/ggqh.kqh\u{1b}SPYzzzvmkituktgr/etie\u{a}")))))
(check-sat)
