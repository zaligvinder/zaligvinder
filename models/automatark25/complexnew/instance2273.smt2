(declare-const X String)
; MyPostsearch\x2econduit\x2ecomUser-Agent\x3AAcmeSubject\x3Aready\.\r\n
(assert (not (str.in.re X (str.to.re "MyPostsearch.conduit.comUser-Agent:AcmeSubject:ready.\x0d\x0a\x0a"))))
; media\x2Edxcdirect\x2Ecom\.smx\?PASSW=SAHHost\x3AProAgentIDENTIFY
(assert (not (str.in.re X (str.to.re "media.dxcdirect.com.smx?PASSW=SAHHost:ProAgentIDENTIFY\x0a"))))
; ^0?[0-9]?[0-9]$|^(100)$
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "0")) (re.opt (re.range "0" "9")) (re.range "0" "9")) (str.to.re "100\x0a")))))
; Servidor\x2Ehome\x2Eedonkey\x2Ecom
(assert (not (str.in.re X (str.to.re "Servidor.\x13home.edonkey.com\x0a"))))
; /^\/images2\/[0-9a-fA-F]{500,}/U
(assert (str.in.re X (re.++ (str.to.re "//images2//U\x0a") ((_ re.loop 500 500) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.* (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))))
(check-sat)
