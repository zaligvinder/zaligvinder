(declare-const X String)
; to=\x2Fezsb\s\x3Ahirmvtg\x2fggqh\.kqhSPYzzzvmkituktgr\x2fetie
(assert (not (str.in.re X (re.++ (str.to.re "to=/ezsb") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re ":hirmvtg/ggqh.kqh\x1bSPYzzzvmkituktgr/etie\x0a")))))
(check-sat)
