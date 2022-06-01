(declare-const X String)
; \u{5D}\u{25}20\u{5B}Port_X-Mailer\u{3A}X-Mailer\u{3a}www\.actualnames\.comwebsearch\.getmirar\.com
(assert (not (str.in_re X (str.to_re "]%20[Port_X-Mailer:\u{13}X-Mailer:\u{13}www.actualnames.comwebsearch.getmirar.com\u{a}"))))
; Host\u{3A}\d+Subject\u{3A}[^\n\r]*Seconds\-ovplHost\u{3A}Host\u{3A}Download
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Subject:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Seconds-ovplHost:Host:Download\u{a}"))))
; Toolbar[^\n\r]*url=\d+Host\u{3A}Welcome\u{2F}communicatortbGateCrasher
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "url=") (re.+ (re.range "0" "9")) (str.to_re "Host:Welcome/communicatortbGateCrasher\u{a}")))))
; (\{\\f\d*)\\([^;]+;)
(assert (str.in_re X (re.++ (str.to_re "\u{5c}\u{a}{\u{5c}f") (re.* (re.range "0" "9")) (re.+ (re.comp (str.to_re ";"))) (str.to_re ";"))))
; [-]?[1-9]\d{0,16}\.?\d{0,2}|[-]?[0]?\.[1-9]{1,2}|[-]?[0]?\.[0-9][1-9]
(assert (str.in_re X (re.union (re.++ (re.opt (str.to_re "-")) (re.range "1" "9") ((_ re.loop 0 16) (re.range "0" "9")) (re.opt (str.to_re ".")) ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (re.opt (str.to_re "-")) (re.opt (str.to_re "0")) (str.to_re ".") ((_ re.loop 1 2) (re.range "1" "9"))) (re.++ (re.opt (str.to_re "-")) (re.opt (str.to_re "0")) (str.to_re ".") (re.range "0" "9") (re.range "1" "9") (str.to_re "\u{a}")))))
(check-sat)
