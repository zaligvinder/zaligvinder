(declare-const X String)
; /filename=[^\n]*\u{2e}ram/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ram/i\u{a}")))))
; JMailReportgpstool\u{2e}globaladserver\u{2e}com
(assert (str.in_re X (str.to_re "JMailReportgpstool.globaladserver.com\u{a}")))
; ([+(]?\d{0,2}[)]?)([-/.\s]?\d+)+
(assert (str.in_re X (re.++ (re.+ (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "/") (str.to_re ".") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.range "0" "9")))) (str.to_re "\u{a}") (re.opt (re.union (str.to_re "+") (str.to_re "("))) ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (str.to_re ")")))))
; ToolBar\s+HWAEUser-Agent\u{3A}Theef2-\>M\u{2E}zipbar\-navig\u{2E}yandex\u{2E}ru
(assert (not (str.in_re X (re.++ (str.to_re "ToolBar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HWAEUser-Agent:Theef2->M.zipbar-navig.yandex.ru\u{a}")))))
(check-sat)
