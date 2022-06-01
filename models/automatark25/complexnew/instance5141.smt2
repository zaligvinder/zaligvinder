(declare-const X String)
; /filename=[^\n]*\u{2e}tif/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".tif/i\u{a}"))))
; AgentCSmtpsidebar\.activeshopper\.comTry2Find
(assert (not (str.in_re X (str.to_re "AgentCSmtpsidebar.activeshopper.comTry2Find\u{a}"))))
; \u{2F}cs\u{2F}pop4\u{2F}User-Agent\u{3A}kitwww\u{2E}borlander\u{2E}com\u{2E}cn
(assert (str.in_re X (str.to_re "/cs/pop4/User-Agent:kitwww.borlander.com.cn\u{a}")))
; \u{2F}rss\d+Host\u{3a}TCP\u{2F}AD\u{2F}ULOGNetBusCookie\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "/rss") (re.+ (re.range "0" "9")) (str.to_re "Host:TCP/AD/ULOGNetBusCookie:\u{a}")))))
; ^\w*[-]*\w*\\\w*$
(assert (str.in_re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (str.to_re "-")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{5c}") (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}"))))
(check-sat)
