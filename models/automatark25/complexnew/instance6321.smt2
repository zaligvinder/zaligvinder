(declare-const X String)
; zzzvmkituktgr\x2fetie\s+WindowsAttachedPalas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (not (str.in.re X (re.++ (str.to.re "zzzvmkituktgr/etie") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "WindowsAttachedPalas.starware.com/dp/search?x=\x0a")))))
; Apofis.*Port\x2E\s+\x2FNFO\x2CRegistered
(assert (not (str.in.re X (re.++ (str.to.re "Apofis") (re.* re.allchar) (str.to.re "Port.") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/NFO,Registered\x0a")))))
; /^\d+O\d+\.jsp\?[a-z0-9\x3d\x2b\x2f]{20}/iR
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.range "0" "9")) (str.to.re "O") (re.+ (re.range "0" "9")) (str.to.re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "=") (str.to.re "+") (str.to.re "/"))) (str.to.re "/iR\x0a")))))
(check-sat)
