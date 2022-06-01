(declare-const X String)
; /\u{2e}swf([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.swf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; ^((http|https|ftp|ftps)+(:\/\/))?(www\.)?
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.+ (re.union (str.to_re "http") (str.to_re "https") (str.to_re "ftp") (str.to_re "ftps"))) (str.to_re "://"))) (re.opt (str.to_re "www.")) (str.to_re "\u{a}")))))
(check-sat)
