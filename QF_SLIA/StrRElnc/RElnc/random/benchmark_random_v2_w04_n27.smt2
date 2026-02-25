(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "26" x)))

(assert (str.in_re y (re.union (re.union (re.range "5" "9") (re.+ (re.range "0" "9"))) (str.to_re "76"))))
(assert (str.in_re x (re.++ (re.* (str.to_re "4")) (str.to_re "740"))))

(assert (= (+ (- (str.len x)) (* (- 4) (str.len y))) 73))
(assert (<= (+ (* (- 9) (str.len x)) (* 8 (str.len y))) 41))
(assert (>= (+ (* 8 (str.len x)) (* 2 (str.len y)) (* 6 (str.to_int x)) (* (- 2) (str.to_int y))) 62))

(check-sat)