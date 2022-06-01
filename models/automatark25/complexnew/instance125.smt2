(declare-const X String)
; /filename=[^\n]*\u{2e}vap/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".vap/i\u{a}")))))
; LOG\s+spyblini\u{2E}iniUpdateUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "LOG") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "spyblini.iniUpdateUser-Agent:\u{a}")))))
; /^[^\s]*\u{D}\u{A}$/P
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{d}\u{a}/P\u{a}")))))
; pjpoptwql\u{2f}rlnj\sPG=SPEEDBARadblock\u{2E}linkz\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "pjpoptwql/rlnj") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "PG=SPEEDBARadblock.linkz.com\u{a}"))))
; /filename=[^\n]*\u{2e}wps/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wps/i\u{a}")))))
(check-sat)
