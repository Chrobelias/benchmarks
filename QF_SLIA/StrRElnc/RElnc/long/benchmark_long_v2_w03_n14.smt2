(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= x (str.++ y "88")))

(assert (str.in_re x (re.* (re.range "7" "9"))))
(assert (str.in_re y (re.union (re.range "6" "8") (re.* (re.++ (str.to_re "559") (str.to_re "3"))))))

(assert (> (+ (* (- 6) (str.len x)) (* 3 (str.len y))) 48))
(assert (>= (+ (* 2 (str.len x)) (* (- 5) (str.len y))) 57))
(assert (>= (+ (- (str.to_int x)) (* 7 (str.to_int y))) 71))

(check-sat)