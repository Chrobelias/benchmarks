(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "152") (str.to_re "725")))))
(assert (str.in_re y (re.+ (re.union (re.range "7" "9") (re.range "1" "8")))))
(assert (str.in_re z (re.union (str.to_re "348") (re.++ (str.to_re "905") (re.* (str.to_re "46"))))))
(assert (str.in_re a (re.+ (str.to_re "96"))))

(assert (> (+ (* 6 (str.len x)) (* (- 8) (str.len y)) (- (str.len z)) (* 6 (str.len a))) 72))
(assert (<= (+ (* (- 7) (str.to_int x)) (* 5 (str.to_int y)) (* 9 (str.to_int z)) (* 2 (str.to_int a))) 99))
(assert (> (+ (* (- 8) (str.len x)) (* (- 5) (str.len y)) (* 10 (str.len z)) (* 5 (str.len a))) 90))

(check-sat)