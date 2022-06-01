(declare-const X String)
; Toolbar[^\n\r]*url=\d+Host\u{3A}Welcome\u{2F}communicatortbGateCrasher
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "url=") (re.+ (re.range "0" "9")) (str.to_re "Host:Welcome/communicatortbGateCrasher\u{a}")))))
; WinSession\w+asdbiz\u{2E}biz\dpjpoptwql\u{2f}rlnj\u{2F}pagead\u{2F}ads\?
(assert (not (str.in_re X (re.++ (str.to_re "WinSession") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "asdbiz.biz") (re.range "0" "9") (str.to_re "pjpoptwql/rlnj/pagead/ads?\u{a}")))))
; ^UA-\d+-\d+$
(assert (str.in_re X (re.++ (str.to_re "UA-") (re.+ (re.range "0" "9")) (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
; \w+@\w+\.\w+
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}")))))
(check-sat)
