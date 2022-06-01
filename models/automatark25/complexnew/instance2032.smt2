(declare-const X String)
; [^\d^\-^\,^\u{20}]+
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to_re "^") (str.to_re "-") (str.to_re ",") (str.to_re " "))) (str.to_re "\u{a}")))))
; Referer\u{3A}\s+HXDownload\w+installs\u{2E}seekmo\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Referer:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HXDownload") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "installs.seekmo.com\u{a}")))))
; dialupvpn\u{5f}pwd\s+HXDownloadupdailyinformation
(assert (not (str.in_re X (re.++ (str.to_re "dialupvpn_pwd") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HXDownloadupdailyinformation\u{a}")))))
(check-sat)
