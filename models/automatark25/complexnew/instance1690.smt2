(declare-const X String)
; [^\d^\-^\,^\u{20}]+
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to_re "^") (str.to_re "-") (str.to_re ",") (str.to_re " "))) (str.to_re "\u{a}"))))
; User-Agent\u{3A}Host\u{3A}hasHost\u{3A}ComputerKeylogger\u{2E}com
(assert (not (str.in_re X (str.to_re "User-Agent:Host:hasHost:ComputerKeylogger.com\u{a}"))))
(check-sat)
