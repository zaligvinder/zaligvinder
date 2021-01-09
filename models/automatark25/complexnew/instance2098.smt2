(declare-const X String)
; (\/\*(\s*|.*?)*\*\/)|(\/\/.*)
(assert (str.in.re X (re.union (re.++ (str.to.re "/*") (re.* (re.union (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar))) (str.to.re "*/")) (re.++ (str.to.re "\x0a//") (re.* re.allchar)))))
; /filename=[^\n]*\x2esearch-ms/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".search-ms/i\x0a"))))
; SI\|Server\|\s+OSSProxy\x5Chome\/lordofsearch%3fAuthorization\x3a
(assert (str.in.re X (re.++ (str.to.re "SI|Server|\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "OSSProxy\x5chome/lordofsearch%3fAuthorization:\x0a"))))
(check-sat)
