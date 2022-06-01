(declare-const X String)
; /filename=[^\n]*\u{2e}mppl/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mppl/i\u{a}")))))
; <!--[\\.|\\W|\\w]*?-->
(assert (not (str.in_re X (re.++ (str.to_re "<!--") (re.* (re.union (str.to_re "\u{5c}") (str.to_re ".") (str.to_re "|") (str.to_re "W") (str.to_re "w"))) (str.to_re "-->\u{a}")))))
(check-sat)
