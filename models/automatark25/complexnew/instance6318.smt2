(declare-const X String)
; actionID=&url=&load_frameset=1&autologin=0&anchor_string=&server_key=imap&imapuser=(.*)&pass=(.*)&new_lang=pt_BR&select_view=imp
(assert (not (str.in.re X (re.++ (str.to.re "actionID=&url=&load_frameset=1&autologin=0&anchor_string=&server_key=imap&imapuser=") (re.* re.allchar) (str.to.re "&pass=") (re.* re.allchar) (str.to.re "&new_lang=pt_BR&select_view=imp\x0a")))))
; JMailReportgpstool\x2eglobaladserver\x2ecom
(assert (not (str.in.re X (str.to.re "JMailReportgpstool.globaladserver.com\x0a"))))
; ^[0-9]{4} {0,1}[A-Z]{2}$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "\x0a"))))
; /^Host\x3a\x20\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\r?\n/Hsmi
(assert (str.in.re X (re.++ (str.to.re "/Host: ") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to.re "\x0d")) (str.to.re "\x0a/Hsmi\x0a"))))
; ([+]?\d[ ]?[(]?\d{3}[)]?[ ]?\d{2,3}[- ]?\d{2}[- ]?\d{2})
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (str.to.re "+")) (re.range "0" "9") (re.opt (str.to.re " ")) (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (str.to.re " ")) ((_ re.loop 2 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 2 2) (re.range "0" "9")))))
(check-sat)
