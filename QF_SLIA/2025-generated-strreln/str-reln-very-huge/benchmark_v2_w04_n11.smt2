(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.++ (re.* (str.to_re "8")) (str.to_re "169"))))
(assert (str.in_re y (re.++ (re.union (str.to_re "69") (re.+ (str.to_re "430"))) (str.to_re "141"))))

(assert (= (+ (* (- 5) (str.to_int x)) (* 8 (str.to_int y))) 81))
(assert (> (+ (* 2 (str.len x)) (* 10 (str.len y)) (* 8 (str.to_int y))) 42))
(assert (> (+ (* 7 (str.to_int x)) (* (- 7) (str.to_int y))) 20))

(check-sat)