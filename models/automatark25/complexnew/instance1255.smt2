(declare-const X String)
; ^([\.\"\'-/ \(/)\s\[\]\\\,\<\>\;\:\{\}]?)([0-9]{3})([\.\"\'-/\(/)\s\[\]\\\,\<\>\;\:\{\}]?)([0-9]{3})([\,\.\"\'-/\(/)\s\[\]\\\<\>\;\:\{\}]?)([0-9]{4})$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re ".") (str.to_re "\u{22}") (re.range "'" "/") (str.to_re " ") (str.to_re "(") (str.to_re "/") (str.to_re ")") (str.to_re "[") (str.to_re "]") (str.to_re "\u{5c}") (str.to_re ",") (str.to_re "<") (str.to_re ">") (str.to_re ";") (str.to_re ":") (str.to_re "{") (str.to_re "}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re ".") (str.to_re "\u{22}") (re.range "'" "/") (str.to_re "(") (str.to_re "/") (str.to_re ")") (str.to_re "[") (str.to_re "]") (str.to_re "\u{5c}") (str.to_re ",") (str.to_re "<") (str.to_re ">") (str.to_re ";") (str.to_re ":") (str.to_re "{") (str.to_re "}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re ",") (str.to_re ".") (str.to_re "\u{22}") (re.range "'" "/") (str.to_re "(") (str.to_re "/") (str.to_re ")") (str.to_re "[") (str.to_re "]") (str.to_re "\u{5c}") (str.to_re "<") (str.to_re ">") (str.to_re ";") (str.to_re ":") (str.to_re "{") (str.to_re "}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; Try2Find\u{23}\u{23}\u{23}\u{23}ToolbarServerUser\u{3A}
(assert (not (str.in_re X (str.to_re "Try2Find####ToolbarServerUser:\u{a}"))))
; /^Content-Type\u{3a}[\u{20}\u{9}]+application\/x-msdos-program/smiH
(assert (str.in_re X (re.++ (str.to_re "/Content-Type:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}"))) (str.to_re "application/x-msdos-program/smiH\u{a}"))))
; as\u{2E}starware\u{2E}com\u{2F}dp\u{2F}search\?x=.*X-Mailer\u{3A}
(assert (str.in_re X (re.++ (str.to_re "as.starware.com/dp/search?x=") (re.* re.allchar) (str.to_re "X-Mailer:\u{13}\u{a}"))))
; ^((0[1-9])|(1[0-2]))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "\u{a}")))))
(check-sat)
