(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= y (str.++ "49" x)))

(assert (str.in_re x (re.* (re.union (re.+ (str.to_re "239")) (re.* (str.to_re "4"))))))
(assert (str.in_re y (re.union (re.* (str.to_re "646")) (re.union (str.to_re "74") (re.* (re.range "4" "9"))))))

(assert (>= (+ (* (- 7) (str.to_int x)) (- (str.to_int y))) 92))
(assert (= (* 5 (str.len y)) 44))

(check-sat)