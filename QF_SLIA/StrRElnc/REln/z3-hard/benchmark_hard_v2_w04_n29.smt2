(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "496") (str.to_re "51")))))
(assert (str.in_re y (re.++ (str.to_re "333") (re.++ (re.+ (re.+ (str.to_re "0"))) (str.to_re "2")))))

(assert (>= (+ (* (- 3) (str.to_int x)) (* 2 (str.to_int y))) 2))
(assert (< (+ (* (- 4) (str.len x)) (* (- 2) (str.to_int x))) 43))
(assert (= (+ (* (- 5) (str.to_int x)) (* 6 (str.to_int y))) 23))

(check-sat)