(declare-const X String)
; MyBrowserSbAtsHost\x3A
(assert (str.in.re X (str.to.re "MyBrowserSbAtsHost:\x0a")))
; User-Agent\x3A[^\n\r]*aadserver\dYOUR\x2Fxml\x2Ftoolbar\x2F
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "aadserver") (re.range "0" "9") (str.to.re "YOUR/xml/toolbar/\x0a")))))
; ^(\d{1,})$|^(\d{1,}\.)$|^(\d{0,}?\.\d{1,})$|^([+-]\d{1,}(\.)?)$|^([+-](\d{1,})?\.\d{1,})$
(assert (str.in.re X (re.union (re.+ (re.range "0" "9")) (re.++ (re.+ (re.range "0" "9")) (str.to.re ".")) (re.++ (re.* (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9"))) (re.++ (re.union (str.to.re "+") (str.to.re "-")) (re.+ (re.range "0" "9")) (re.opt (str.to.re "."))) (re.++ (str.to.re "\x0a") (re.union (str.to.re "+") (str.to.re "-")) (re.opt (re.+ (re.range "0" "9"))) (str.to.re ".") (re.+ (re.range "0" "9"))))))
(check-sat)
