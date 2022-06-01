(declare-const X String)
; Port\u{2E}[^\n\r]*007\d+Logsdl\u{2E}web-nexus\u{2E}net
(assert (str.in_re X (re.++ (str.to_re "Port.") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "007") (re.+ (re.range "0" "9")) (str.to_re "Logsdl.web-nexus.net\u{a}"))))
; ^[0-9]%?$|^1[0-9]%?$|^2[0-9]%?$|^3[0-5]%?$|^[0-9]\.\d{1,2}%?$|^1[0-9]\.\d{1,2}%?$|^2[0-9]\.\d{1,2}%?$|^3[0-4]\.\d{1,2}%?$|^35%?$
(assert (str.in_re X (re.union (re.++ (re.range "0" "9") (re.opt (str.to_re "%"))) (re.++ (str.to_re "1") (re.range "0" "9") (re.opt (str.to_re "%"))) (re.++ (str.to_re "2") (re.range "0" "9") (re.opt (str.to_re "%"))) (re.++ (str.to_re "3") (re.range "0" "5") (re.opt (str.to_re "%"))) (re.++ (re.range "0" "9") (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to_re "%"))) (re.++ (str.to_re "1") (re.range "0" "9") (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to_re "%"))) (re.++ (str.to_re "2") (re.range "0" "9") (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to_re "%"))) (re.++ (str.to_re "3") (re.range "0" "4") (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to_re "%"))) (re.++ (str.to_re "35") (re.opt (str.to_re "%")) (str.to_re "\u{a}")))))
; User-Agent\u{3a}\s+Host\u{3A}\s+proxystylesheet=Excitefhfksjzsfu\u{2f}ahm\.uqs
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "proxystylesheet=Excitefhfksjzsfu/ahm.uqs\u{a}")))))
; doarauzeraqf\u{2f}vvv\.ul
(assert (str.in_re X (str.to_re "doarauzeraqf/vvv.ul\u{a}")))
; /\u{2e}js\u{3f}[a-zA-Z0-9]{9,20}=Mozilla\u{2f}/UGi
(assert (not (str.in_re X (re.++ (str.to_re "/.js?") ((_ re.loop 9 20) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "=Mozilla//UGi\u{a}")))))
(check-sat)
