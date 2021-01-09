(declare-const X String)
; Toolbarkl\x2Esearch\x2Eneed2find\x2EcomtvshowticketsToolbarUser-Agent\x3A\.compress
(assert (str.in.re X (str.to.re "Toolbarkl.search.need2find.comtvshowticketsToolbarUser-Agent:.compress\x0a")))
(check-sat)
