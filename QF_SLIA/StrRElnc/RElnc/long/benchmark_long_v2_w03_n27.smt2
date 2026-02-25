(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= y (str.++ "56" x)))

(assert (str.in_re y (re.union (re.* (re.range "3" "8")) (re.union (re.range "4" "7") (re.+ (str.to_re "577"))))))
(assert (str.in_re x (re.++ (str.to_re "586") (re.* (re.+ (str.to_re "214"))))))

(assert (= (+ (- (str.len x)) (* 3 (str.len y)) (* 8 (str.to_int y))) 14))
(assert (> (+ (* (- 4) (str.len x)) (- (str.len y))) 86))

(check-sat)