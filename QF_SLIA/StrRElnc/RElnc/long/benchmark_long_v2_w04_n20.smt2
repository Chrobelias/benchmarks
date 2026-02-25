(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= y (str.++ x "70")))

(assert (str.in_re y (re.* (re.range "0" "9"))))
(assert (str.in_re x (re.* (str.to_re "35"))))

(assert (> (+ (* 5 (str.len x)) (* (- 6) (str.len y))) 60))
(assert (> (+ (* 3 (str.to_int x)) (str.to_int y)) 83))
(assert (= (+ (* (- 3) (str.len x)) (* 4 (str.len y))) 17))
(assert (<= (+ (* 4 (str.len x)) (* (- 9) (str.len y))) 77))

(check-sat)