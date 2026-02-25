(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "68" x)))

(assert (str.in_re y (re.+ (re.range "0" "9"))))
(assert (str.in_re x (re.* (str.to_re "5"))))

(assert (<= (+ (* (- 9) (str.to_int x)) (* 2 (str.to_int y))) 17))
(assert (> (+ (* 8 (str.len x)) (- (str.len y))) 87))

(check-sat)