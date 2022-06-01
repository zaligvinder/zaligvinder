(declare-const X String)
; /\u{2E}call\u{2E}call\s*\u{28}[^\u{29}\u{2C}]*?\u{2C}\s*\u{28}?(0x|\d)/i
(assert (str.in_re X (re.++ (str.to_re "/.call.call") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.* (re.union (str.to_re ")") (str.to_re ","))) (str.to_re ",") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "(")) (re.union (str.to_re "0x") (re.range "0" "9")) (str.to_re "/i\u{a}"))))
; engineResultUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "engineResultUser-Agent:\u{a}")))
; \u{7D}\u{7B}Trojan\u{3A}\w+by\d+to\w+dddlogin\u{2E}dudu\u{2E}comSurveillanceIPOblivion
(assert (str.in_re X (re.++ (str.to_re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "by") (re.+ (re.range "0" "9")) (str.to_re "to") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "dddlogin.dudu.comSurveillance\u{13}IPOblivion\u{a}"))))
; ([0-9]|[0-9][0-9])\.\s
(assert (not (str.in_re X (re.++ (str.to_re ".") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "\u{a}") (re.range "0" "9") (re.range "0" "9")))))
(check-sat)
