(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "55" x)))

(assert (str.in_re y (re.union (re.* (re.range "0" "8")) (re.* (re.+ (str.to_re "31"))))))
(assert (str.in_re x (re.++ (re.range "0" "2") (re.+ (str.to_re "87")))))

(assert (> (+ (* (- 4) (str.len x)) (- (str.len y)) (* (- 3) (str.to_int y))) 78))
(assert (< (+ (* 3 (str.len x)) (- (str.len y))) 84))
(assert (<= (+ (* 5 (str.len x)) (* (- 8) (str.len y))) 84))

(check-sat)