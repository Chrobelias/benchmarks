(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= x (str.++ "77" y "97" z)))

(assert (str.in_re x (re.* (re.union (re.union (re.range "0" "9") (re.* (str.to_re "81"))) (re.range "6" "9")))))
(assert (str.in_re z (re.* (re.++ (re.union (str.to_re "7") (re.* (str.to_re "98"))) (str.to_re "8")))))
(assert (str.in_re y (re.++ (re.* (str.to_re "988")) (str.to_re "576"))))

(assert (> (+ (* 3 (str.len x)) (* 5 (str.len z)) (* (- 7) (str.to_int y))) 35))
(assert (< (+ (* (- 6) (str.to_int x)) (* 10 (str.to_int y)) (* 2 (str.to_int z))) 11))

(check-sat)