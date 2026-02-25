(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= y (str.++ "85" x)))

(assert (str.in_re x (re.+ (str.to_re "114"))))
(assert (str.in_re y (re.* (re.* (re.* (re.* (re.range "0" "9")))))))

(assert (>= (+ (* (- 9) (str.to_int x)) (* (- 8) (str.to_int y))) 35))
(assert (>= (+ (* 8 (str.len x)) (* 9 (str.len y)) (* 2 (str.to_int y))) 59))
(assert (> (+ (* 5 (str.to_int x)) (* 6 (str.to_int y))) 64))

(check-sat)