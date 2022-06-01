(declare-const X String)
; /filename=[^\n]*\u{2e}jp2/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jp2/i\u{a}")))))
; (antifraud\.ref\.num)[0-9]*(@citibank\.com)
(assert (not (str.in_re X (re.++ (str.to_re "antifraud.ref.num") (re.* (re.range "0" "9")) (str.to_re "@citibank.com\u{a}")))))
; Host\u{3A}\d+UI2.*areprotocolhttp\u{3A}\u{2F}\u{2F}www\.searchinweb\.com\u{2F}search\.php\?said=bar
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "UI2") (re.* re.allchar) (str.to_re "areprotocolhttp://www.searchinweb.com/search.php?said=bar\u{a}")))))
; (\w(\s)?)+
(assert (str.in_re X (re.++ (re.+ (re.++ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (str.to_re "\u{a}"))))
(check-sat)
