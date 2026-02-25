(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (str.to_re "89") (re.+ (str.to_re "11")))))
(assert (str.in_re x (re.++ (re.* (str.to_re "51")) (str.to_re "874"))))

(assert (< (+ (* (- 4) (str.len x)) (* (- 7) (str.len y))) 17))
(assert (> (* (- 3) (str.len y)) 64))
(assert (< (+ (* (- 5) (str.to_int x)) (* (- 3) (str.to_int y))) 17))
(assert (= (+ (* 4 (str.len x)) (* 6 (str.len y))) 92))

(check-sat)