(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.++ (re.* (str.to_re "9")) (str.to_re "33"))))
(assert (str.in_re y (re.* (str.to_re "0"))))

(assert (= (+ (* (- 6) (str.to_int x)) (* 2 (str.to_int y))) 93))
(assert (= (+ (* 6 (str.len y)) (* (- 8) (str.to_int x))) 37))

(check-sat)