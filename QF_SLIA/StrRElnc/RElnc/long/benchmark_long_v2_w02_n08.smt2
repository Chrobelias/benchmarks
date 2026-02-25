(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= y (str.++ "35" x)))

(assert (str.in_re y (re.+ (re.union (re.++ (str.to_re "125") (str.to_re "41")) (re.range "1" "9")))))
(assert (str.in_re x (re.* (re.++ (re.+ (str.to_re "41")) (re.range "7" "9")))))

(assert (< (+ (* 4 (str.to_int x)) (- (str.to_int y))) 22))
(assert (<= (- (str.len x)) 19))

(check-sat)