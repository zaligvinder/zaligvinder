(declare-const X String)
; 3AUser-Agent\u{3A}FROM\u{3A}Remoteqlqqlbojvii\u{2f}gtHost\u{3A}
(assert (not (str.in_re X (str.to_re "3AUser-Agent:FROM:Remoteqlqqlbojvii/gtHost:\u{a}"))))
; /filename=[^\n]*\u{2e}flac/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".flac/i\u{a}"))))
(check-sat)
