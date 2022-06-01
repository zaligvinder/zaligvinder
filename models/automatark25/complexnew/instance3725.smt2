(declare-const X String)
; Subject\u{3a}Porta\u{2F}asp\u{2F}offers\.asp\?\u{2F}iis2ebs\.aspwww\u{2E}smileycentral\u{2E}com
(assert (str.in_re X (str.to_re "Subject:Porta/asp/offers.asp?/iis2ebs.aspwww.smileycentral.com\u{a}")))
; s_sq=aolsnssignin.*LOG\s+Host\u{3A}Subject\u{3A}online-casino-searcher\.com
(assert (not (str.in_re X (re.++ (str.to_re "s_sq=aolsnssignin") (re.* re.allchar) (str.to_re "LOG") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Subject:online-casino-searcher.com\u{a}")))))
; Port\u{2E}[^\n\r]*007\d+Logsdl\u{2E}web-nexus\u{2E}net
(assert (not (str.in_re X (re.++ (str.to_re "Port.") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "007") (re.+ (re.range "0" "9")) (str.to_re "Logsdl.web-nexus.net\u{a}")))))
(check-sat)
