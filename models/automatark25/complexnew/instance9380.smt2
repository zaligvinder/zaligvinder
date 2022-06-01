(declare-const X String)
; /filename=[^\n]*\u{2e}m4v/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".m4v/i\u{a}"))))
; dll\u{3F}\w+updates\w+Host\u{3a}SoftwareHost\u{3A}joke
(assert (str.in_re X (re.++ (str.to_re "dll?") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "updates") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:SoftwareHost:joke\u{a}"))))
; ^([a-zA-Z0-9]{1,15})$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 15) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}")))))
; /^\/[a-f0-9]{32}\/[a-f0-9]{32}\.jar$/Ui
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re ".jar/Ui\u{a}"))))
; Client\d+Subject\u{3A}isBysooTBwhenu\u{2E}comToolbar
(assert (not (str.in_re X (re.++ (str.to_re "Client") (re.+ (re.range "0" "9")) (str.to_re "Subject:isBysooTBwhenu.com\u{1b}Toolbar\u{a}")))))
(check-sat)
