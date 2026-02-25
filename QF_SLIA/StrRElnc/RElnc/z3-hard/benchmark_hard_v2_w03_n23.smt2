(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "50" x)))

(assert (str.in_re x (re.+ (re.union (str.to_re "4") (re.+ (str.to_re "7"))))))
(assert (str.in_re y (re.++ (re.range "4" "7") (re.union (re.+ (re.range "0" "9")) (str.to_re "61")))))

(assert (= (+ (* 3 (str.len x)) (* (- 5) (str.to_int y))) 76))
(assert (= (+ (- (str.to_int x)) (* 3 (str.to_int y))) 14))

(check-sat)