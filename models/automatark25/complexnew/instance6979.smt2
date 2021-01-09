(declare-const X String)
; /^(application|audio|example|image|message|model|multipart|text|video)\/[a-zA-Z0-9]+([+.-][a-zA-z0-9]+)*$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "application") (str.to.re "audio") (str.to.re "example") (str.to.re "image") (str.to.re "message") (str.to.re "model") (str.to.re "multipart") (str.to.re "text") (str.to.re "video")) (str.to.re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (re.union (str.to.re "+") (str.to.re ".") (str.to.re "-")) (re.+ (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9"))))) (str.to.re "/\x0a")))))
; if\s[(][A-Za-z]*\s[=]\s
(assert (not (str.in.re X (re.++ (str.to.re "if") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "(") (re.* (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "=") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a")))))
; subject\x3A.*Login\s+adfsgecoiwnf
(assert (str.in.re X (re.++ (str.to.re "subject:") (re.* re.allchar) (str.to.re "Login") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adfsgecoiwnf\x1b\x0a"))))
; NETObserveSupervisorHost\x3Awebsearch\x2Edrsnsrch\x2Ecom
(assert (str.in.re X (str.to.re "NETObserveSupervisorHost:websearch.drsnsrch.com\x13\x0a")))
; /filename=[^\n]*\x2emkv/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mkv/i\x0a")))))
(check-sat)
