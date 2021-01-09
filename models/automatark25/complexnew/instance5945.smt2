(declare-const X String)
; Iterenet\s+www\x2Emirarsearch\x2EcomHost\x3A
(assert (str.in.re X (re.++ (str.to.re "Iterenet") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.mirarsearch.comHost:\x0a"))))
; dat\s+resultsmaster\x2Ecom.*Host\x3a.*SpyAgentRootHost\x3AAdToolsSubject\x3Ae2give\.com
(assert (not (str.in.re X (re.++ (str.to.re "dat") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "resultsmaster.com\x13") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "SpyAgentRootHost:AdToolsSubject:e2give.com\x0a")))))
; /filename=[^\n]*\x2eskm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".skm/i\x0a"))))
(check-sat)
