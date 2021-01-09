(declare-const X String)
; UI2Host\x3ADesktopUser-Agent\x3a\x2Fnotifier\x2F
(assert (not (str.in.re X (str.to.re "UI2Host:DesktopUser-Agent:/notifier/\x0a"))))
; st=\s+www\.iggsey\.comcs\x2Esmartshopper\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "st=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.iggsey.comcs.smartshopper.com\x0a"))))
; ^(([\w][\w\-\.]*)\.)?([\w][\w\-]+)(\.([\w][\w\.]*))?$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re ".") (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.* (re.union (str.to.re "-") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (re.opt (re.++ (str.to.re ".") (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.* (re.union (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "\x0a") (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
; \x2Fta\x2FNEWS\x2Fpassword\x3B1\x3BOptix
(assert (not (str.in.re X (str.to.re "/ta/NEWS/password;1;Optix\x0a"))))
(check-sat)
