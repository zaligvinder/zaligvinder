(declare-const X String)
; aresflashdownloader\u{2E}com%3fccecaedbebfcaf\u{2E}com\stoolbar\.anwb\.nl
(assert (str.in_re X (re.++ (str.to_re "aresflashdownloader.com%3fccecaedbebfcaf.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toolbar.anwb.nl\u{a}"))))
; /\/cache\/pdf\u{5F}efax\u{5F}\d{8,15}\.zip$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//cache/pdf_efax_") ((_ re.loop 8 15) (re.range "0" "9")) (str.to_re ".zip/Ui\u{a}")))))
; /filename=[^\n]*\u{2e}jif/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jif/i\u{a}")))))
; User-Agent\u{3a}User-Agent\u{3A}Report\u{2E}Host\u{3A}fhfksjzsfu\u{2f}ahm\.uqs
(assert (not (str.in_re X (str.to_re "User-Agent:User-Agent:Report.Host:fhfksjzsfu/ahm.uqs\u{a}"))))
(check-sat)
