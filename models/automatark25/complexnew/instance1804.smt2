(declare-const X String)
; eveocczmthmmq\u{2f}omzl\d+Host\u{3A}ulmxct\u{2f}mqoyc
(assert (not (str.in_re X (re.++ (str.to_re "eveocczmthmmq/omzl") (re.+ (re.range "0" "9")) (str.to_re "Host:ulmxct/mqoyc\u{a}")))))
; ^[A-Z].*$
(assert (str.in_re X (re.++ (re.range "A" "Z") (re.* re.allchar) (str.to_re "\u{a}"))))
; Iterenet\s+www\u{2E}mirarsearch\u{2E}comHost\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Iterenet") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.mirarsearch.comHost:\u{a}")))))
; /filename=[^\n]*\u{2e}max/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".max/i\u{a}"))))
; (.|[\r\n]){1,5}
(assert (not (str.in_re X (re.++ ((_ re.loop 1 5) (re.union re.allchar (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "\u{a}")))))
(check-sat)
