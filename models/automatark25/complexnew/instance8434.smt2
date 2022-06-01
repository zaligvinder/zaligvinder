(declare-const X String)
; dat\s+resultsmaster\u{2E}com.*Host\u{3a}.*SpyAgentRootHost\u{3A}AdToolsSubject\u{3A}e2give\.com
(assert (not (str.in_re X (re.++ (str.to_re "dat") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "resultsmaster.com\u{13}") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "SpyAgentRootHost:AdToolsSubject:e2give.com\u{a}")))))
; upgrade\u{2E}qsrch\u{2E}info.*report.*Host\u{3A}.*Host\u{3A}kwd-i%3fUser-Agent\u{3A}www\u{2e}proventactics\u{2e}com
(assert (str.in_re X (re.++ (str.to_re "upgrade.qsrch.info") (re.* re.allchar) (str.to_re "report") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "Host:kwd-i%3fUser-Agent:www.proventactics.com\u{a}"))))
; ^(\+[1-9][0-9]*(\([0-9]*\)|-[0-9]*-))?[0]?[1-9][0-9\- ]*$
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "+") (re.range "1" "9") (re.* (re.range "0" "9")) (re.union (re.++ (str.to_re "(") (re.* (re.range "0" "9")) (str.to_re ")")) (re.++ (str.to_re "-") (re.* (re.range "0" "9")) (str.to_re "-"))))) (re.opt (str.to_re "0")) (re.range "1" "9") (re.* (re.union (re.range "0" "9") (str.to_re "-") (str.to_re " "))) (str.to_re "\u{a}"))))
; \u{2F}toolbar\u{2F}supremetb\s+wjpropqmlpohj\u{2f}lo\s+resultsmaster\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "/toolbar/supremetb") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wjpropqmlpohj/lo") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "resultsmaster.com\u{13}\u{a}"))))
(check-sat)
