(declare-const X String)
; MyAgentprotocolprotocolHost\u{3A}\u{2F}s\u{28}robert\u{40}blackcastlesoft\u{2E}com\u{29}data2\.activshopper\.com
(assert (not (str.in_re X (str.to_re "MyAgentprotocolprotocolHost:/s(robert@blackcastlesoft.com)data2.activshopper.com\u{a}"))))
; /\/download\.asp\?p\=\d$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//download.asp?p=") (re.range "0" "9") (str.to_re "/Ui\u{a}")))))
(check-sat)
