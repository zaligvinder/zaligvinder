(declare-const X String)
; ^[-+]?(\d?\d?\d?,?)?(\d{3}\,?)*$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.opt (re.++ (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (str.to_re ",")))) (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ",")))) (str.to_re "\u{a}")))))
; version\s+error\*\-\*WrongUser-Agent\u{3A}com\u{2F}index\.php\?tpid=
(assert (str.in_re X (re.++ (str.to_re "version") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "error*-*WrongUser-Agent:com/index.php?tpid=\u{a}"))))
; /\u{a}Array\u{a}\u{28}\u{a}\u{20}{4}\u{5b}[a-z\d]{11}\u{5d}\u{20}\u{3d}\u{3e}\u{20}\d{16}\u{a}\u{29}/i
(assert (str.in_re X (re.++ (str.to_re "/\u{a}Array\u{a}(\u{a}") ((_ re.loop 4 4) (str.to_re " ")) (str.to_re "[") ((_ re.loop 11 11) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "] => ") ((_ re.loop 16 16) (re.range "0" "9")) (str.to_re "\u{a})/i\u{a}"))))
; /filename=[^\n]*\u{2e}cpe/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cpe/i\u{a}")))))
(check-sat)
