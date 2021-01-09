(declare-const X String)
; MyverToolbarTrojanControlHost\x3A
(assert (str.in.re X (str.to.re "MyverToolbarTrojanControlHost:\x0a")))
; /\/app\/\?prj=\d\x26pid=[^\r\n]+\x26mac=/Ui
(assert (str.in.re X (re.++ (str.to.re "//app/?prj=") (re.range "0" "9") (str.to.re "&pid=") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "&mac=/Ui\x0a"))))
(check-sat)
