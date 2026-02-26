(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x y "36") (str.++ "76" z)))

(assert (str.in_re y (re.union (re.union (str.to_re "27") (str.to_re "79")) (re.* (str.to_re "467")))))
(assert (str.in_re x (re.union (re.+ (re.range "4" "7")) (re.* (re.* (re.range "4" "6"))))))
(assert (str.in_re z (re.union (str.to_re "103") (re.* (re.union (str.to_re "425") (re.* (re.range "2" "8")))))))

(assert (> (+ (* 8 (str.len y)) (* 5 (str.to_int x))) 8))

(check-sat)