(declare-const X String)
; ed2k\u{c0}STATUS\u{c0}Server\u{7D}\u{7B}Port\u{3A}http\u{3A}\u{2F}\u{2F}tv\u{2E}seekmo\u{2E}com\u{2F}showme\u{2E}aspx\u{3F}keyword=
(assert (str.in_re X (str.to_re "ed2k\u{c0}STATUS\u{c0}Server\u{13}}{Port:http://tv.seekmo.com/showme.aspx?keyword=\u{a}")))
; IPUSER-Host\u{3A}User-Agent\u{3A}\u{2F}searchfast\u{2F}
(assert (not (str.in_re X (str.to_re "IPUSER-Host:User-Agent:/searchfast/\u{a}"))))
; /\u{2e}vqf([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.vqf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /filename=[^\n]*\u{2e}mkv/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mkv/i\u{a}"))))
; \stoolbar\.anwb\.nl\s+A-311.*Host\u{3a}Host\u{3A}yddznydqir\u{2f}evi
(assert (str.in_re X (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toolbar.anwb.nl") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "A-311") (re.* re.allchar) (str.to_re "Host:Host:yddznydqir/evi\u{a}"))))
(check-sat)
