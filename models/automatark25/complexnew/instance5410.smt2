(declare-const X String)
; WebsiteUser-Agent\x3Ahttphostfast-look\x2Ecom
(assert (not (str.in.re X (str.to.re "WebsiteUser-Agent:httphostfast-look.com\x0a"))))
; ^(\d){8}$
(assert (str.in.re X (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; rank\x2Etoolbarbrowser\x2Ecomlnzzlnbk\x2fpkrm\.fin
(assert (not (str.in.re X (str.to.re "rank.toolbarbrowser.comlnzzlnbk/pkrm.fin\x0a"))))
; /^\x2f[0-9a-z]{30}$/Umi
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 30 30) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "/Umi\x0a")))))
(check-sat)
