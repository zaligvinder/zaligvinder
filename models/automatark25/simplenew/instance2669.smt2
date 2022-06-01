(declare-const X String)
; Travel\s+version\s+lnzzlnbk\u{2f}pkrm\.finFILESIZE\u{3E}M1User-Agent\u{3A}Agentwww\u{2E}weepee\u{2E}comOnlineM1Host\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Travel") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "version") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "lnzzlnbk/pkrm.finFILESIZE>\u{13}M1User-Agent:Agentwww.weepee.com\u{1b}OnlineM1Host:\u{a}"))))
(check-sat)
