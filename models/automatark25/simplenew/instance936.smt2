(declare-const X String)
; <textarea(.|\n)*?>((.|\n)*?)</textarea>
(assert (str.in_re X (re.++ (str.to_re "<textarea") (re.* (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re ">") (re.* (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re "</textarea>\u{a}"))))
(check-sat)
