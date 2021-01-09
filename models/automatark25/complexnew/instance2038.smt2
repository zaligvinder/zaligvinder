(declare-const X String)
; eveocczmthmmq\x2fomzl\d\x2Fasp\x2Foffers\.asp\?
(assert (str.in.re X (re.++ (str.to.re "eveocczmthmmq/omzl") (re.range "0" "9") (str.to.re "/asp/offers.asp?\x0a"))))
; ^http[s]?://twitter\.com/(#!/)?[a-zA-Z0-9]{1,15}[/]?$
(assert (str.in.re X (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://twitter.com/") (re.opt (str.to.re "#!/")) ((_ re.loop 1 15) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.opt (str.to.re "/")) (str.to.re "\x0a"))))
(check-sat)
