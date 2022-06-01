(declare-const X String)
; /filename=[^\n]*\u{2e}ppsx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ppsx/i\u{a}"))))
; /(((ftp|http|https):\/\/)|(\w+:{0,1}\w*@))?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.opt (re.union (re.++ (re.union (str.to_re "ftp") (str.to_re "http") (str.to_re "https")) (str.to_re "://")) (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (str.to_re ":")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "@")))) (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to_re "/") (re.union (str.to_re "#") (str.to_re "!") (str.to_re ":") (str.to_re ".") (str.to_re "?") (str.to_re "+") (str.to_re "=") (str.to_re "&") (str.to_re "%") (str.to_re "@") (str.to_re "-") (str.to_re "/") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re "/\u{a}")))))
; /\/setup_b\.asp\?prj=\d\u{26}pid=[^\r\n]*\u{26}mac=/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//setup_b.asp?prj=") (re.range "0" "9") (str.to_re "&pid=") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "&mac=/Ui\u{a}")))))
(check-sat)
