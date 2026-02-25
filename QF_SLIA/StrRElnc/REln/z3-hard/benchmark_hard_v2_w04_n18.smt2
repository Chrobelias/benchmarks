(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "544")) (str.to_re "964"))))
(assert (str.in_re y (re.* (str.to_re "12"))))

(assert (= (+ (* 10 (str.to_int x)) (* (- 8) (str.to_int y))) 66))
(assert (> (+ (* 8 (str.to_int x)) (* (- 7) (str.to_int y))) 20))
(assert (>= (+ (* 3 (str.len x)) (* 6 (str.len y))) 60))
(assert (>= (+ (* 9 (str.to_int x)) (* (- 4) (str.to_int y))) 42))

(check-sat)