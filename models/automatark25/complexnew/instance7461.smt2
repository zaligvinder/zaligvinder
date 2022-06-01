(declare-const X String)
; Host\u{3a}SoftwareHost\u{3A}jokeWEBCAM-Server\u{3a}
(assert (not (str.in_re X (str.to_re "Host:SoftwareHost:jokeWEBCAM-Server:\u{a}"))))
; Online\u{25}21\u{25}21\u{25}21\sUser-Agent\u{3A}\d+HXDownloadasdbiz\u{2E}biz
(assert (not (str.in_re X (re.++ (str.to_re "Online%21%21%21") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "HXDownloadasdbiz.biz\u{a}")))))
; ^(\d|,)*\.?\d*$
(assert (not (str.in_re X (re.++ (re.* (re.union (re.range "0" "9") (str.to_re ","))) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
