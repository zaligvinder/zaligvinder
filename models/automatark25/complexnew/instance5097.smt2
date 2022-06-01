(declare-const X String)
; ([0]|[-]?[0]\.[0-9]+)|([-]?([1-9]+\.[0-9]+))|([-]?[1-9]+)
(assert (not (str.in_re X (re.union (re.++ (re.opt (str.to_re "-")) (re.+ (re.range "1" "9")) (str.to_re ".") (re.+ (re.range "0" "9"))) (re.++ (str.to_re "\u{a}") (re.opt (str.to_re "-")) (re.+ (re.range "1" "9"))) (str.to_re "0") (re.++ (re.opt (str.to_re "-")) (str.to_re "0.") (re.+ (re.range "0" "9")))))))
; Informationsearchnuggetspastb\u{2E}freeprod\u{2E}comOnlineWeb\.fcgi
(assert (not (str.in_re X (str.to_re "Informationsearchnugget\u{13}spastb.freeprod.comOnlineWeb.fcgi\u{a}"))))
; www\u{2E}sogou\u{2E}com\s+HWAE\+The\+password\+is\u{3A}
(assert (str.in_re X (re.++ (str.to_re "www.sogou.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HWAE+The+password+is:\u{a}"))))
; FreeAccessBar\s+hostie[^\n\r]*CodeguruBrowser\dStableWeb-MailUser-Agent\u{3A}195\.225\.Subject\u{3A}
(assert (str.in_re X (re.++ (str.to_re "FreeAccessBar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "hostie") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "CodeguruBrowser") (re.range "0" "9") (str.to_re "StableWeb-MailUser-Agent:195.225.Subject:\u{a}"))))
(check-sat)
