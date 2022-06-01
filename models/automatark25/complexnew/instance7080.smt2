(declare-const X String)
; Toolbarkl\u{2E}search\u{2E}need2find\u{2E}comtvshowticketsToolbarUser-Agent\u{3A}\.compress
(assert (not (str.in_re X (str.to_re "Toolbarkl.search.need2find.comtvshowticketsToolbarUser-Agent:.compress\u{a}"))))
; ^([0-9]{0,2})-([0-9]{0,2})-([0-9]{0,4})$
(assert (not (str.in_re X (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 0 2) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 0 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /\/fnts\.html$/U
(assert (not (str.in_re X (str.to_re "//fnts.html/U\u{a}"))))
; ([+]?\d[ ]?[(]?\d{3}[)]?[ ]?\d{2,3}[- ]?\d{2}[- ]?\d{2})
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt (str.to_re "+")) (re.range "0" "9") (re.opt (str.to_re " ")) (re.opt (str.to_re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.opt (str.to_re " ")) ((_ re.loop 2 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " "))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " "))) ((_ re.loop 2 2) (re.range "0" "9")))))
; CD\u{2F}\.ico\u{2F}sLogearch195\.225\.
(assert (str.in_re X (str.to_re "CD/.ico/sLogearch195.225.\u{a}")))
(check-sat)
