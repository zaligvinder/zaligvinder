(declare-const X String)
; User-Agent\x3a\s+Subject\x3Aas\x2Estarware\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Subject:as.starware.com\x0a"))))
; Password="(\{.+\}[0-9a-zA-Z]+[=]*|[0-9a-zA-Z]+)"
(assert (not (str.in.re X (re.++ (str.to.re "Password=\x22") (re.union (re.++ (str.to.re "{") (re.+ re.allchar) (str.to.re "}") (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (re.* (str.to.re "="))) (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")))) (str.to.re "\x22\x0a")))))
; Host\x3A\s+Host\x3ASubject\x3anamedDownloadUser-Agent\x3aBackAtTaCk
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Subject:namedDownloadUser-Agent:BackAtTaCk\x0a")))))
; dat\s+resultsmaster\x2Ecom.*Host\x3a.*SpyAgentRootHost\x3AAdToolsSubject\x3Ae2give\.com
(assert (str.in.re X (re.++ (str.to.re "dat") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "resultsmaster.com\x13") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "SpyAgentRootHost:AdToolsSubject:e2give.com\x0a"))))
; adserver\.warezclient\.com\s+URLBlaze\s+Host\x3AHost\x3A
(assert (str.in.re X (re.++ (str.to.re "adserver.warezclient.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "URLBlaze") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Host:\x0a"))))
(check-sat)
