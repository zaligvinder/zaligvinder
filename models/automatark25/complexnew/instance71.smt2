(declare-const X String)
; ^((http|https|ftp|ftps)+(:\/\/))?(www\.)?
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.+ (re.union (str.to_re "http") (str.to_re "https") (str.to_re "ftp") (str.to_re "ftps"))) (str.to_re "://"))) (re.opt (str.to_re "www.")) (str.to_re "\u{a}")))))
; User-Agent\u{3A}\d+Desktop\sIDENTIFY666User-Agent\u{3A}\u{5B}Static
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "Desktop") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "IDENTIFY666User-Agent:[Static\u{a}")))))
; /[^\u{20}-\u{7e}\r\n]{3}/P
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 3 3) (re.union (re.range " " "~") (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "/P\u{a}")))))
(check-sat)
