(declare-const X String)
; WinSession\w+asdbiz\x2Ebiz\dpjpoptwql\x2frlnj\x2Fpagead\x2Fads\?
(assert (not (str.in.re X (re.++ (str.to.re "WinSession") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "asdbiz.biz") (re.range "0" "9") (str.to.re "pjpoptwql/rlnj/pagead/ads?\x0a")))))
; ^[A-Za-z]\d[A-Za-z][ -]?\d[A-Za-z]\d$
(assert (str.in.re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9") (str.to.re "\x0a"))))
; ProjectMyWebSearchSearchAssistantfast-look\x2EcomOneReporter
(assert (not (str.in.re X (str.to.re "ProjectMyWebSearchSearchAssistantfast-look.comOneReporter\x0a"))))
(check-sat)
