(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.range "0" "8") (re.+ (str.to_re "11")))))
(assert (str.in_re y (re.* (re.++ (str.to_re "516") (str.to_re "896")))))

(assert (>= (+ (str.len x) (* (- 4) (str.len y)) (* (- 10) (str.to_int x))) 99))
(assert (= (+ (* 5 (str.to_int x)) (* 9 (str.to_int y))) 8))
(assert (<= (+ (* (- 7) (str.len y)) (- (str.to_int x))) 12))

(check-sat)