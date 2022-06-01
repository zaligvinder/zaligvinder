(declare-const X String)
; /^(application|audio|example|image|message|model|multipart|text|video)\/[a-zA-Z0-9]+([+.-][a-zA-z0-9]+)*$/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "application") (str.to_re "audio") (str.to_re "example") (str.to_re "image") (str.to_re "message") (str.to_re "model") (str.to_re "multipart") (str.to_re "text") (str.to_re "video")) (str.to_re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (re.union (str.to_re "+") (str.to_re ".") (str.to_re "-")) (re.+ (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9"))))) (str.to_re "/\u{a}")))))
; if\s[(][A-Za-z]*\s[=]\s
(assert (not (str.in_re X (re.++ (str.to_re "if") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "(") (re.* (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "=") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "\u{a}")))))
; subject\u{3A}.*Login\s+adfsgecoiwnf
(assert (str.in_re X (re.++ (str.to_re "subject:") (re.* re.allchar) (str.to_re "Login") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "adfsgecoiwnf\u{1b}\u{a}"))))
; NETObserveSupervisorHost\u{3A}websearch\u{2E}drsnsrch\u{2E}com
(assert (str.in_re X (str.to_re "NETObserveSupervisorHost:websearch.drsnsrch.com\u{13}\u{a}")))
; /filename=[^\n]*\u{2e}mkv/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mkv/i\u{a}")))))
(check-sat)
