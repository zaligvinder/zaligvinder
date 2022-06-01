(declare-const X String)
; eveocczmthmmq\u{2f}omzl\d\u{2F}asp\u{2F}offers\.asp\?
(assert (str.in_re X (re.++ (str.to_re "eveocczmthmmq/omzl") (re.range "0" "9") (str.to_re "/asp/offers.asp?\u{a}"))))
; ^http[s]?://twitter\.com/(#!/)?[a-zA-Z0-9]{1,15}[/]?$
(assert (str.in_re X (re.++ (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re "://twitter.com/") (re.opt (str.to_re "#!/")) ((_ re.loop 1 15) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.opt (str.to_re "/")) (str.to_re "\u{a}"))))
(check-sat)
