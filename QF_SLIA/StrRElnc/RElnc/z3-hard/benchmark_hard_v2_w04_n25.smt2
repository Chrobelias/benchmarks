(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "58" x)))

(assert (str.in_re x (re.++ (re.* (str.to_re "560")) (re.+ (re.range "5" "8")))))
(assert (str.in_re y (re.* (re.+ (re.union (str.to_re "94") (re.* (re.range "5" "9")))))))

(assert (< (+ (* (- 7) (str.len x)) (* 4 (str.len y))) 36))
(assert (= (+ (- (str.len x)) (* 2 (str.to_int y))) 61))
(assert (> (+ (* (- 3) (str.len x)) (* 4 (str.len y))) 42))

(check-sat)