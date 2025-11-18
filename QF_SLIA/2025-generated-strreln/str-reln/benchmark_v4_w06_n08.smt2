(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.union (str.to_re "86") (re.+ (re.* (re.range "6" "9"))))))
(assert (str.in_re y (re.union (re.+ (str.to_re "9")) (re.range "1" "7"))))
(assert (str.in_re z (re.* (re.union (str.to_re "110") (re.++ (re.+ (re.range "1" "4")) (str.to_re "76"))))))
(assert (str.in_re a (re.++ (str.to_re "66") (re.+ (str.to_re "965")))))

(assert (= (+ (* 5 (str.len x)) (* (- 10) (str.to_int x)) (* 9 (str.to_int a))) 22))
(assert (<= (+ (* (- 7) (str.len x)) (* (- 8) (str.len y)) (* (- 8) (str.len a)) (* 4 (str.to_int x)) (* 6 (str.to_int y)) (- (str.to_int a))) 45))
(assert (<= (+ (* 7 (str.len x)) (* (- 10) (str.len y)) (* 3 (str.len z)) (* 5 (str.len a))) 24))
(assert (= (+ (* 6 (str.to_int x)) (* 2 (str.to_int z)) (* (- 5) (str.to_int a))) 38))

(check-sat)