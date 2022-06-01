(declare-const X String)
; www\u{2E}freescratchandwin\u{2E}com\w+Port.*User-Agent\u{3A}Toolbarkit
(assert (not (str.in_re X (re.++ (str.to_re "www.freescratchandwin.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Port") (re.* re.allchar) (str.to_re "User-Agent:Toolbarkit\u{a}")))))
; /\/crypt_1_sell\d\d-\d\d.exe$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//crypt_1_sell") (re.range "0" "9") (re.range "0" "9") (str.to_re "-") (re.range "0" "9") (re.range "0" "9") re.allchar (str.to_re "exe/Ui\u{a}")))))
; Host\u{3A}Attachedengineact=Download
(assert (str.in_re X (str.to_re "Host:Attachedengineact=Download\u{a}")))
(check-sat)
