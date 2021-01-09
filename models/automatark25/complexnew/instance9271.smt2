(declare-const X String)
; pgwtjgxwthx\x2fbyb\.xkyLOGurl=enews\x2Eearthlink\x2Enet
(assert (not (str.in.re X (str.to.re "pgwtjgxwthx/byb.xkyLOGurl=enews.earthlink.net\x0a"))))
; ^([0-9a-f]{4}\.[0-9a-f]{4}\.[0-9a-f]{4})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re ".") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re ".") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))))))
; ^[6]\d{7}$
(assert (not (str.in.re X (re.++ (str.to.re "6") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; \stoolbar\.anwb\.nl.*Host\x3A
(assert (not (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nl") (re.* re.allchar) (str.to.re "Host:\x0a")))))
(check-sat)
