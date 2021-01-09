(declare-const X String)
; ^[\w0-9]+( [\w0-9]+)*$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (str.to.re " ") (re.+ (re.union (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "\x0a")))))
; Host\x3a\w+Host\x3A.*Host\x3aToolbarServerserver\x7D\x7BSysuptime\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "Host:ToolbarServerserver}{Sysuptime:\x0a")))))
; (1[8,9]|20)[0-9]{2}
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.union (str.to.re "8") (str.to.re ",") (str.to.re "9"))) (str.to.re "20")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; Spy\dccecaedbebfcaf\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Spy") (re.range "0" "9") (str.to.re "ccecaedbebfcaf.com\x0a")))))
; Ready\s+Client\s+MyBrowserHost\x3asecurityon\x3AHost\x3ARedirector\x22ServerHost\x3AX-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "Ready") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Client") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "MyBrowserHost:securityon:Host:Redirector\x22ServerHost:X-Mailer:\x13\x0a"))))
(check-sat)
