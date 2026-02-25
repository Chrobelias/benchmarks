(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= y (str.++ "17" x)))

(assert (str.in_re x (re.++ (str.to_re "4") (re.union (re.range "5" "7") (re.+ (str.to_re "0"))))))
(assert (str.in_re y (re.+ (re.union (str.to_re "18") (re.range "0" "8")))))

(assert (> (+ (* 7 (str.len x)) (- (str.len y)) (str.to_int x) (* 6 (str.to_int y))) 44))
(assert (<= (+ (* 10 (str.len x)) (str.len y)) 21))

(check-sat)