(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.+ (re.++ (re.+ (re.* (str.to_re "250"))) (re.range "1" "4")))))
(assert (str.in_re x (re.+ (re.++ (str.to_re "6") (str.to_re "18")))))

(assert (> (+ (* 10 (str.len x)) (* 2 (str.len y))) 26))
(assert (= (+ (* (- 10) (str.len y)) (* 6 (str.to_int x))) 17))
(assert (<= (+ (* (- 3) (str.len x)) (* 4 (str.len y))) 64))

(check-sat)