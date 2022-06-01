(declare-const X String)
; Toolbarkl\u{2E}search\u{2E}need2find\u{2E}comtvshowticketsToolbarUser-Agent\u{3A}\.compress
(assert (str.in_re X (str.to_re "Toolbarkl.search.need2find.comtvshowticketsToolbarUser-Agent:.compress\u{a}")))
(check-sat)
