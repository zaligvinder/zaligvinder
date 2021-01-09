(declare-const X String)
; Subject\x3AHost\x3aHost\x3A000Filelogin_ok\x5EMiniCommand
(assert (not (str.in.re X (str.to.re "Subject:Host:Host:000Filelogin_ok^MiniCommand\x0a"))))
; \.bmp[^\n\r]*couponbar\.coupons\.com.*Host\x3AHost\x3aHTTPwww
(assert (str.in.re X (re.++ (str.to.re ".bmp") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "couponbar.coupons.com") (re.* re.allchar) (str.to.re "Host:Host:HTTPwww\x0a"))))
; \b[1-9]\d{3}\ +[A-Z]{2}\b
(assert (not (str.in.re X (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")) (re.+ (str.to.re " ")) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "\x0a")))))
; SpywareinformationToolBarX-Mailer\x3aUser-Agent\x3AMM_RECO\x2EEXE
(assert (not (str.in.re X (str.to.re "SpywareinformationToolBarX-Mailer:\x13User-Agent:MM_RECO.EXE\x0a"))))
; ([A-Za-z0-9]+:\/\/)?([a-zA-Z0-9]+(\.[a-zA-Z0-9]+)*)?(\/|(\/([A-Za-z0-9\:@!\$&'\(\}\*\+\-_,;=~\.]+|(%[A-F0-9]{2})+))*)(\?[A-Za-z0-9]+=[A-Za-z0-9]+(&[A-Za-z0-9]+=[A-Za-z0-9]+)*)?
(assert (str.in.re X (re.++ (re.opt (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "://"))) (re.opt (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))))) (re.union (str.to.re "/") (re.* (re.++ (str.to.re "/") (re.union (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re ":") (str.to.re "@") (str.to.re "!") (str.to.re "$") (str.to.re "&") (str.to.re "'") (str.to.re "(") (str.to.re "}") (str.to.re "*") (str.to.re "+") (str.to.re "-") (str.to.re "_") (str.to.re ",") (str.to.re ";") (str.to.re "=") (str.to.re "~") (str.to.re "."))) (re.+ (re.++ (str.to.re "%") ((_ re.loop 2 2) (re.union (re.range "A" "F") (re.range "0" "9"))))))))) (re.opt (re.++ (str.to.re "?") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "=") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.* (re.++ (str.to.re "&") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "=") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))))))) (str.to.re "\x0a"))))
(check-sat)
