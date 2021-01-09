(declare-const X String)
; /version\x3D[\x22\x27][^\x22\x27]{1024}/
(assert (str.in.re X (re.++ (str.to.re "/version=") (re.union (str.to.re "\x22") (str.to.re "'")) ((_ re.loop 1024 1024) (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/\x0a"))))
; \b[1-9]\b
(assert (not (str.in.re X (re.++ (re.range "1" "9") (str.to.re "\x0a")))))
; /filename=[^\n]*\x2emht/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mht/i\x0a"))))
; URLBlaze.*User-Agent\x3A.*mPOPUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "URLBlaze") (re.* re.allchar) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "mPOPUser-Agent:\x0a")))))
; xbqyosoe\x2fcpvmwww\x2eurlblaze\x2enetconfigINTERNAL\.ini
(assert (not (str.in.re X (str.to.re "xbqyosoe/cpvmwww.urlblaze.netconfigINTERNAL.ini\x0a"))))
(check-sat)
