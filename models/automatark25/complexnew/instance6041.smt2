(declare-const X String)
; (([\n,  ])*((<+)([^<>]+)(>*))+([\n,  ])*)+
(assert (str.in_re X (re.++ (re.+ (re.++ (re.* (re.union (str.to_re "\u{a}") (str.to_re ",") (str.to_re " "))) (re.+ (re.++ (re.+ (str.to_re "<")) (re.+ (re.union (str.to_re "<") (str.to_re ">"))) (re.* (str.to_re ">")))) (re.* (re.union (str.to_re "\u{a}") (str.to_re ",") (str.to_re " "))))) (str.to_re "\u{a}"))))
; /Accept\u{3a}\u{20}text\/\*\u{2c}\u{20}application\/\*\u{d}\u{a}User-Agent\u{3a}\u{20}[^\n]+\u{d}\u{a}Host\u{3a}[^\n]+\u{d}\u{a}(Pragma|Cache-Control)\u{3a}\u{20}no-cache\u{d}\u{a}(Connection\u{3a} Keep-Alive\u{d}\u{a})?(\u{d}\u{a})?$/
(assert (not (str.in_re X (re.++ (str.to_re "/Accept: text/*, application/*\u{d}\u{a}User-Agent: ") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re "\u{d}\u{a}Host:") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re "\u{d}\u{a}") (re.union (str.to_re "Pragma") (str.to_re "Cache-Control")) (str.to_re ": no-cache\u{d}\u{a}") (re.opt (str.to_re "Connection: Keep-Alive\u{d}\u{a}")) (re.opt (str.to_re "\u{d}\u{a}")) (str.to_re "/\u{a}")))))
(check-sat)
