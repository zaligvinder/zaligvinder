(declare-const X String)
; WinSession\w+asdbiz\u{2E}biz\dpjpoptwql\u{2f}rlnj\u{2F}pagead\u{2F}ads\?
(assert (not (str.in_re X (re.++ (str.to_re "WinSession") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "asdbiz.biz") (re.range "0" "9") (str.to_re "pjpoptwql/rlnj/pagead/ads?\u{a}")))))
; ^[A-Za-z]\d[A-Za-z][ -]?\d[A-Za-z]\d$
(assert (str.in_re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9") (str.to_re "\u{a}"))))
; ProjectMyWebSearchSearchAssistantfast-look\u{2E}comOneReporter
(assert (not (str.in_re X (str.to_re "ProjectMyWebSearchSearchAssistantfast-look.comOneReporter\u{a}"))))
(check-sat)
