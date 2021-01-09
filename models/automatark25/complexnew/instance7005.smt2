(declare-const X String)
; MyAgentprotocolprotocolHost\x3A\x2Fs\x28robert\x40blackcastlesoft\x2Ecom\x29data2\.activshopper\.com
(assert (not (str.in.re X (str.to.re "MyAgentprotocolprotocolHost:/s(robert@blackcastlesoft.com)data2.activshopper.com\x0a"))))
; /\/download\.asp\?p\=\d$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//download.asp?p=") (re.range "0" "9") (str.to.re "/Ui\x0a")))))
(check-sat)
