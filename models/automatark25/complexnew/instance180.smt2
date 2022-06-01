(declare-const X String)
; /\/crypt_1_sell\d\d-\d\d.exe$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//crypt_1_sell") (re.range "0" "9") (re.range "0" "9") (str.to_re "-") (re.range "0" "9") (re.range "0" "9") re.allchar (str.to_re "exe/Ui\u{a}")))))
; ^(([0]?[1-9]|1[0-2])(:)([0-5][0-9]))$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9"))))
; OS\u{2F}\d+User-Agent\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "OS/") (re.+ (re.range "0" "9")) (str.to_re "User-Agent:User-Agent:\u{a}")))))
; dll\u{3F}\w+updates\w+Host\u{3a}SoftwareHost\u{3A}joke
(assert (str.in_re X (re.++ (str.to_re "dll?") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "updates") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:SoftwareHost:joke\u{a}"))))
; Supreme\d+Host\u{3A}\d+yxegtd\u{2f}efcwgHost\u{3A}TPSystem
(assert (str.in_re X (re.++ (str.to_re "Supreme") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "yxegtd/efcwgHost:TPSystem\u{a}"))))
(check-sat)
