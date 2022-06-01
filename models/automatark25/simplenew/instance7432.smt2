(declare-const X String)
; /\/app\/\?prj=\d\u{26}pid=[^\r\n]+\u{26}mac=/Ui
(assert (str.in_re X (re.++ (str.to_re "//app/?prj=") (re.range "0" "9") (str.to_re "&pid=") (re.+ (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "&mac=/Ui\u{a}"))))
(check-sat)
