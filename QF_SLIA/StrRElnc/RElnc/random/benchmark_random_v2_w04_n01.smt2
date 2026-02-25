(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "71" x)))

(assert (str.in_re y (re.+ (re.union (str.to_re "713") (str.to_re "583")))))
(assert (str.in_re x (re.++ (re.range "0" "3") (re.* (str.to_re "272")))))

(assert (<= (+ (* (- 9) (str.len y)) (* (- 9) (str.to_int x))) 91))
(assert (>= (+ (* (- 7) (str.len x)) (- (str.to_int x))) 99))

(check-sat)