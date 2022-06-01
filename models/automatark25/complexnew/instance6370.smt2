(declare-const X String)
; /filename=[^\n]*\u{2e}mp4/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mp4/i\u{a}"))))
; SbAts[^\n\r]*Subject\u{3a}\d+dcww\u{2E}dmcast\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "SbAts") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "dcww.dmcast.com\u{a}")))))
; IP\d+SAHPORT-User-Agent\u{3A}User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "IP") (re.+ (re.range "0" "9")) (str.to_re "SAHPORT-User-Agent:User-Agent:\u{a}"))))
; report\<\u{2F}title\>Referer\u{3A}aresflashdownloader\u{2E}comHost\u{3A}DeathpioletLOGtowww\u{2E}searchexpert\u{2E}com
(assert (not (str.in_re X (str.to_re "report</title>Referer:aresflashdownloader.comHost:DeathpioletLOGtowww.searchexpert.com\u{a}"))))
; [\u{1}-\u{8},\u{A}-\u{1F},\u{7F},\u{81},\u{8D},\u{8F},\u{90},\u{9D}]
(assert (str.in_re X (re.++ (re.union (re.range "\u{1}" "\u{8}") (str.to_re ",") (re.range "\u{a}" "\u{1f}") (str.to_re "\u{7f}") (str.to_re "\u{81}") (str.to_re "\u{8d}") (str.to_re "\u{8f}") (str.to_re "\u{90}") (str.to_re "\u{9d}")) (str.to_re "\u{a}"))))
(check-sat)
