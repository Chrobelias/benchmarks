(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "82" x)))

(assert (str.in_re x (re.union (re.+ (re.* (str.to_re "743"))) (str.to_re "146"))))
(assert (str.in_re y (re.+ (re.union (str.to_re "6") (re.+ (re.range "2" "9"))))))

(assert (<= (+ (* (- 7) (str.to_int x)) (* 5 (str.to_int y))) 0))
(assert (< (+ (- (str.len x)) (* 9 (str.len y))) 32))

(check-sat)