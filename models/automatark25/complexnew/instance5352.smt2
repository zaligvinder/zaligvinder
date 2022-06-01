(declare-const X String)
; Host\u{3A}\d+Subject\u{3A}[^\n\r]*Seconds\-ovplHost\u{3A}Host\u{3A}Download
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Subject:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Seconds-ovplHost:Host:Download\u{a}")))))
; ^((0*[0-1]?[0-9]{1,2}\.)|(0*((2[0-4][0-9])|(25[0-5]))\.)){3}((0*[0-1]?[0-9]{1,2})|(0*((2[0-4][0-9])|(25[0-5]))))$
(assert (not (str.in_re X (re.++ ((_ re.loop 3 3) (re.union (re.++ (re.* (str.to_re "0")) (re.opt (re.range "0" "1")) ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re ".")) (re.++ (re.* (str.to_re "0")) (re.union (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))) (str.to_re ".")))) (re.union (re.++ (re.* (str.to_re "0")) (re.opt (re.range "0" "1")) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (re.* (str.to_re "0")) (re.union (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))))) (str.to_re "\u{a}")))))
; are\s+Toolbar\s+X-Mailer\u{3A}Informationsearchnuggetspastb\u{2E}freeprod\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "are") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Toolbar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "X-Mailer:\u{13}Informationsearchnugget\u{13}spastb.freeprod.com\u{a}"))))
; /^[a-z]\u{3D}[0-9a-z]{100}$/Pm
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.range "a" "z") (str.to_re "=") ((_ re.loop 100 100) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to_re "/Pm\u{a}")))))
; User-Agent\u{3A}config\u{2E}180solutions\u{2E}com
(assert (not (str.in_re X (str.to_re "User-Agent:config.180solutions.com\u{a}"))))
(check-sat)
