(declare-const X String)
; select\u{2F}Get\s+Host\u{3A}.*ppcdomain\u{2E}co\u{2E}uk
(assert (str.in_re X (re.++ (str.to_re "select/Get") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "ppcdomain.co.uk\u{a}"))))
; \u{2F}toolbar\u{2F}supremetb\s+wjpropqmlpohj\u{2f}lo\s+resultsmaster\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "/toolbar/supremetb") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wjpropqmlpohj/lo") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "resultsmaster.com\u{13}\u{a}")))))
; /rapidshare\.com\/files\/(\d+)\/([^\'^\"^\s^>^<^\\^\/]+)/
(assert (not (str.in_re X (re.++ (str.to_re "/rapidshare.com/files/") (re.+ (re.range "0" "9")) (str.to_re "/") (re.+ (re.union (str.to_re "'") (str.to_re "^") (str.to_re "\u{22}") (str.to_re ">") (str.to_re "<") (str.to_re "\u{5c}") (str.to_re "/") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/\u{a}")))))
; /filename=[^\n]*\u{2e}ogx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ogx/i\u{a}"))))
(check-sat)
