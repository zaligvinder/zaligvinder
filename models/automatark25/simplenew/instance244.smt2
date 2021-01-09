(declare-const X String)
; dat\s+resultsmaster\x2Ecom.*Host\x3a.*SpyAgentRootHost\x3AAdToolsSubject\x3Ae2give\.com
(assert (not (str.in.re X (re.++ (str.to.re "dat") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "resultsmaster.com\x13") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "SpyAgentRootHost:AdToolsSubject:e2give.com\x0a")))))
(check-sat)
