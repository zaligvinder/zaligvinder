(declare-const X String)
; \.cfg\d+stale\d+GmbHPG=SPEEDBARcuReferer\u{3A}Spediazmnjgmomgbdz\u{2f}zzmw\.gztHost\u{3A}Host\u{3A}zopabora\u{2E}info
(assert (str.in_re X (re.++ (str.to_re ".cfg") (re.+ (re.range "0" "9")) (str.to_re "stale") (re.+ (re.range "0" "9")) (str.to_re "GmbHPG=SPEEDBARcuReferer:Spediazmnjgmomgbdz/zzmw.gztHost:Host:zopabora.info\u{a}"))))
; from\u{3A}Host\u{3a}www\.thecommunicator\.net
(assert (str.in_re X (str.to_re "from:Host:www.thecommunicator.net\u{a}")))
; Port\s+AgentHost\u{3A}insertkeys\u{3C}keys\u{40}hotpop
(assert (not (str.in_re X (re.++ (str.to_re "Port") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "AgentHost:insertkeys<keys@hotpop\u{a}")))))
; /filename=[^\n]*\u{2e}mny/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mny/i\u{a}"))))
; Host\u{3A}\d+Subject\u{3A}as\u{2E}starware\u{2E}com\u{2F}dp\u{2F}search\?x=
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Subject:as.starware.com/dp/search?x=\u{a}"))))
(check-sat)
