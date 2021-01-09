(declare-const X String)
; /^(1)?(-|.)?(\()?([0-9]{3})(\))?(-|.)?([0-9]{3})(-|.)?([0-9]{4})/
(assert (str.in.re X (re.++ (str.to.re "/") (re.opt (str.to.re "1")) (re.opt (re.union (str.to.re "-") re.allchar)) (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re "-") re.allchar)) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") re.allchar)) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "/\x0a"))))
; jsp\d+Host\x3A\d+moreKontikiHost\x3aAcmeEvilFTP
(assert (str.in.re X (re.++ (str.to.re "jsp") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "moreKontikiHost:AcmeEvilFTP\x0a"))))
; Admin\s+daosearch\x2EcomMyPostwww\.raxsearch\.comref\x3D\x25user\x5Fid
(assert (str.in.re X (re.++ (str.to.re "Admin") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "daosearch.comMyPostwww.raxsearch.comref=%user_id\x0a"))))
; /\/3\/[A-Z]{2}\/[a-f0-9]{32}\/\d+\.\d+\.\d+\.\d+\//
(assert (not (str.in.re X (re.++ (str.to.re "//3/") ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re "//\x0a")))))
; CodeguruBrowserMyPostStableWeb-MailUser-Agent\x3A195\.225\.
(assert (str.in.re X (str.to.re "CodeguruBrowserMyPostStableWeb-MailUser-Agent:195.225.\x0a")))
(check-sat)
