(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "26" y)))

(assert (str.in_re x (re.union (re.++ (re.* (re.range "1" "7")) (re.* (str.to_re "0"))) (re.range "1" "5"))))
(assert (str.in_re y (re.++ (str.to_re "32") (re.+ (re.* (str.to_re "348"))))))

(assert (> (+ (* 8 (str.len x)) (* 6 (str.len y))) 90))
(assert (> (+ (- (str.len x)) (* 4 (str.to_int y))) 65))
(assert (<= (+ (* 9 (str.len x)) (* (- 9) (str.len y))) 70))

(check-sat)