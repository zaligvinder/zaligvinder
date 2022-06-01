(declare-const X String)
; stats\u{2e}drivecleaner\u{2e}com\sPARSERInformationurl=Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "stats.drivecleaner.com\u{13}") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "PARSERInformationurl=Host:\u{a}")))))
; /filename=[^\n]*\u{2e}mpeg/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mpeg/i\u{a}"))))
(check-sat)
