(declare-const X String)
; Toolbarkl\u{2E}search\u{2E}need2find\u{2E}comtvshowticketsToolbarUser-Agent\u{3A}\.compress
(assert (not (str.in_re X (str.to_re "Toolbarkl.search.need2find.comtvshowticketsToolbarUser-Agent:.compress\u{a}"))))
; \u{5B}Static\w+www\.iggsey\.comUser-Agent\u{3A}X-Mailer\u{3a}Computer
(assert (str.in_re X (re.++ (str.to_re "[Static") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www.iggsey.comUser-Agent:X-Mailer:\u{13}Computer\u{a}"))))
; /\u{2f}(css|upload)\u{2f}[a-z]{2}[0-9]{3}\u{2e}ccs/U
(assert (str.in_re X (re.++ (str.to_re "//") (re.union (str.to_re "css") (str.to_re "upload")) (str.to_re "/") ((_ re.loop 2 2) (re.range "a" "z")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ".ccs/U\u{a}"))))
(check-sat)
