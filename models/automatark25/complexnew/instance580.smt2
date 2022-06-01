(declare-const X String)
; /filename=[^\n]*\u{2e}png/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".png/i\u{a}"))))
; \b4[0-9]\b
(assert (str.in_re X (re.++ (str.to_re "4") (re.range "0" "9") (str.to_re "\u{a}"))))
; forum=\s+\u{2F}toolbar\u{2F}ico\u{2F}
(assert (str.in_re X (re.++ (str.to_re "forum=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/toolbar/ico/\u{a}"))))
; DesktopSupportFiles\u{2E}htmlReferer\u{3A}www\u{2E}freescratchandwin\u{2E}com
(assert (str.in_re X (str.to_re "DesktopSupportFiles\u{13}.htmlReferer:www.freescratchandwin.com\u{a}")))
; GmbH\u{2F}communicatortbHost\u{3A}User-Agent\u{3A}adblock\u{2E}linkz\u{2E}com
(assert (not (str.in_re X (str.to_re "GmbH/communicatortbHost:User-Agent:adblock.linkz.com\u{a}"))))
(check-sat)
