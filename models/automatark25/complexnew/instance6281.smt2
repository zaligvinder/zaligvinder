(declare-const X String)
; \binterface\b.*(\bI[_]\w*\b)
(assert (not (str.in.re X (re.++ (str.to.re "interface") (re.* re.allchar) (str.to.re "\x0aI_") (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
; ^[0-9]{10}$|^\(0[1-9]{1}\)[0-9]{8}$|^[0-9]{8}$|^[0-9]{4}[ ][0-9]{3}[ ][0-9]{3}$|^\(0[1-9]{1}\)[ ][0-9]{4}[ ][0-9]{4}$|^[0-9]{4}[ ][0-9]{4}$
(assert (not (str.in.re X (re.union ((_ re.loop 10 10) (re.range "0" "9")) (re.++ (str.to.re "(0") ((_ re.loop 1 1) (re.range "1" "9")) (str.to.re ")") ((_ re.loop 8 8) (re.range "0" "9"))) ((_ re.loop 8 8) (re.range "0" "9")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "(0") ((_ re.loop 1 1) (re.range "1" "9")) (str.to.re ") ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))))
; Host\x3Astech\x2Eweb-nexus\x2EnetHost\x3A
(assert (str.in.re X (str.to.re "Host:stech.web-nexus.netHost:\x0a")))
; /bincode=Wz[0-9A-Za-z\x2b\x2f]{32}\x3d{0,2}$/Um
(assert (not (str.in.re X (re.++ (str.to.re "/bincode=Wz") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "+") (str.to.re "/"))) ((_ re.loop 0 2) (str.to.re "=")) (str.to.re "/Um\x0a")))))
(check-sat)
