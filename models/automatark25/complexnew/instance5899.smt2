(declare-const X String)
; (([A-Z]{1,2}[0-9][0-9A-Z]?)\ ([0-9][A-Z]{2}))|(GIR\ 0AA)
(assert (str.in.re X (re.union (re.++ (str.to.re " ") ((_ re.loop 1 2) (re.range "A" "Z")) (re.range "0" "9") (re.opt (re.union (re.range "0" "9") (re.range "A" "Z"))) (re.range "0" "9") ((_ re.loop 2 2) (re.range "A" "Z"))) (str.to.re "GIR 0AA\x0a"))))
; /\/[a-zA-Z0-9]{4,10}\.jar$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 4 10) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re ".jar/U\x0a")))))
; to=\x2Fezsb\s\x3Ahirmvtg\x2fggqh\.kqhSPYzzzvmkituktgr\x2fetie
(assert (str.in.re X (re.++ (str.to.re "to=/ezsb") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re ":hirmvtg/ggqh.kqh\x1bSPYzzzvmkituktgr/etie\x0a"))))
(check-sat)
