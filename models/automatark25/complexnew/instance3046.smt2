(declare-const X String)
; \u{22}reaction\u{2E}txt\u{22}\d+sErverdist\u{2E}atlas\u{2D}ia\u{2E}comUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "\u{22}reaction.txt\u{22}") (re.+ (re.range "0" "9")) (str.to_re "sErverdist.atlas-ia.comUser-Agent:\u{a}"))))
; /filename=[^\n]*\u{2e}rmf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rmf/i\u{a}")))))
(check-sat)
