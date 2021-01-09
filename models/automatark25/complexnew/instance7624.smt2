(declare-const X String)
; InformationSubject\x3ASpynovabyBlacksnprtz\x7CdialnoSearch
(assert (not (str.in.re X (str.to.re "InformationSubject:SpynovabyBlacksnprtz|dialnoSearch\x0a"))))
; User-Agent\x3A[^\n\r]*connection
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "connection\x0a")))))
; ^[A-Z]{1,3}\d{6}$
(assert (str.in.re X (re.++ ((_ re.loop 1 3) (re.range "A" "Z")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; \d{2}.?\d{3}.?\d{3}/?\d{4}-?\d{2}
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt re.allchar) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt re.allchar) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "/")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; /bincode=Wz[0-9A-Za-z\x2b\x2f]{32}\x3d{0,2}$/Um
(assert (str.in.re X (re.++ (str.to.re "/bincode=Wz") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "+") (str.to.re "/"))) ((_ re.loop 0 2) (str.to.re "=")) (str.to.re "/Um\x0a"))))
(check-sat)
