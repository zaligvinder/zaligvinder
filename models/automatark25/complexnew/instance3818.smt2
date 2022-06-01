(declare-const X String)
; started\u{2E}.*\/cgi-bin\/PopupV
(assert (str.in_re X (re.++ (str.to_re "started.") (re.* re.allchar) (str.to_re "/cgi-bin/PopupV\u{a}"))))
; http://www.9lessons.info/2008/08/most-popular-articles.html
(assert (str.in_re X (re.++ (str.to_re "http://www") re.allchar (str.to_re "9lessons") re.allchar (str.to_re "info/2008/08/most-popular-articles") re.allchar (str.to_re "html\u{a}"))))
; /\u{2e}img([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.img") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /filename=[^\n]*\u{2e}vap/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".vap/i\u{a}"))))
(check-sat)
