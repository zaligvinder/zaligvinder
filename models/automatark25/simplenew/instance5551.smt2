(declare-const X String)
; /(^|&)destination_ip=[^&]*?(\u{60}|\u{24}\u{28}|%60|%24%28)/Pmi
(assert (not (str.in_re X (re.++ (str.to_re "/&destination_ip=") (re.* (re.comp (str.to_re "&"))) (re.union (str.to_re "`") (str.to_re "$(") (str.to_re "%60") (str.to_re "%24%28")) (str.to_re "/Pmi\u{a}")))))
(check-sat)
