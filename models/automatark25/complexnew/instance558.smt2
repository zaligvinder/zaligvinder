(declare-const X String)
; User-Agent\u{3A}User-Agent\u{3a}URLencoderthis\u{7C}Connected
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:URLencoderthis|Connected\u{a}")))
; /filename=[^\n]*\u{2e}cy3/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cy3/i\u{a}")))))
; /filename=[^\n]*\u{2e}dir/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dir/i\u{a}")))))
; ^[-|\+]?[0-9]{1,3}(\,[0-9]{3})*$|^[-|\+]?[0-9]+$
(assert (str.in_re X (re.union (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "|") (str.to_re "+"))) ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "|") (str.to_re "+"))) (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
