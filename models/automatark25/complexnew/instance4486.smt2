(declare-const X String)
; MyBrowserSbAtsHost\u{3A}
(assert (str.in_re X (str.to_re "MyBrowserSbAtsHost:\u{a}")))
; User-Agent\u{3A}[^\n\r]*aadserver\dYOUR\u{2F}xml\u{2F}toolbar\u{2F}
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "aadserver") (re.range "0" "9") (str.to_re "YOUR/xml/toolbar/\u{a}")))))
; ^(\d{1,})$|^(\d{1,}\.)$|^(\d{0,}?\.\d{1,})$|^([+-]\d{1,}(\.)?)$|^([+-](\d{1,})?\.\d{1,})$
(assert (str.in_re X (re.union (re.+ (re.range "0" "9")) (re.++ (re.+ (re.range "0" "9")) (str.to_re ".")) (re.++ (re.* (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9"))) (re.++ (re.union (str.to_re "+") (str.to_re "-")) (re.+ (re.range "0" "9")) (re.opt (str.to_re "."))) (re.++ (str.to_re "\u{a}") (re.union (str.to_re "+") (str.to_re "-")) (re.opt (re.+ (re.range "0" "9"))) (str.to_re ".") (re.+ (re.range "0" "9"))))))
(check-sat)
