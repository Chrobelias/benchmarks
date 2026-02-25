(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "48" y)))

(assert (str.in_re x (re.* (re.* (re.union (str.to_re "87") (str.to_re "4"))))))
(assert (str.in_re y (re.++ (re.union (re.range "2" "7") (str.to_re "81")) (re.* (str.to_re "189")))))

(assert (> (+ (* (- 3) (str.to_int x)) (* 6 (str.to_int y))) 77))
(assert (> (+ (* 4 (str.len y)) (* 6 (str.to_int x))) 75))
(assert (> (+ (* 10 (str.to_int x)) (* (- 5) (str.to_int y))) 38))

(check-sat)