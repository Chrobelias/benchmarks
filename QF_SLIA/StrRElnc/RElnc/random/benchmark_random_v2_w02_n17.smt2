(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "33" y)))

(assert (str.in_re x (re.+ (re.range "1" "8"))))
(assert (str.in_re y (re.* (str.to_re "37"))))

(assert (> (+ (* 9 (str.len x)) (* 2 (str.len y)) (* 10 (str.to_int y))) 42))

(check-sat)