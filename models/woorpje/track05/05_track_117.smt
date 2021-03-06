(set-logic QF_S)
(declare-fun I () String)
(declare-fun F () String)
(declare-fun A () String)
(declare-fun J () String)
(declare-fun C () String)
(assert (= (str.++  "dedfecea" I "baaacdfebdefafdca")  (str.++  "dedfeceabcefcfbadbe" A "dfebdefafdca") ))
(assert (= (str.++  "ddabac" C "ebcacecddbba" C "bbaceaebafabc" C "efcccc")  (str.++  "d" J "cecddbba" F "cccc") ))
(assert (= (str.++  "d" C "d" C "ebbcdcecf" C "cbeffda" C "aebaadcbfbccaabecd")  (str.++  "d" C "d" C "ebbcdcecf" C "cbe" C "fdafaebaadcbfbccaabecd") ))
(assert (= (str.++  "cacabfdbd" C "aadedcfdeefbdaccfcdcdbeed" C "daae")  (str.++  "cacabfdbd" C "aadedc" C "deefbdaccfcdcdbeedfdaae") ))
(assert (>=(* (str.len A) 18) 36))
(assert (<=(* (str.len A) 6) 90))
(assert (<=(* (str.len J) 11) 1045))
(assert (>=(* (str.len I) 12) 168))
(assert (>=(* (str.len C) 12) 12))
(assert (<=(* (str.len C) 17) 51))
(assert (>=(* (str.len F) 5) 75))
(assert (<=(* (str.len F) 7) 392))
(check-sat)
(get-model)
