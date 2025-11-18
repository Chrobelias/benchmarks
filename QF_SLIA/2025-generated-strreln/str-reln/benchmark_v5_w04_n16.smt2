(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.* (re.++ (re.++ (re.+ (str.to_re "3")) (str.to_re "47")) (str.to_re "716")))))
(assert (str.in_re y (re.* (re.++ (str.to_re "43") (re.+ (str.to_re "974"))))))
(assert (str.in_re z (re.++ (re.+ (re.++ (re.+ (re.range "5" "8")) (str.to_re "135"))) (str.to_re "73"))))
(assert (str.in_re a (re.++ (re.* (re.* (str.to_re "941"))) (re.* (str.to_re "147")))))
(assert (str.in_re b (re.+ (str.to_re "178"))))

(assert (<= (+ (* (- 3) (str.to_int x)) (* 4 (str.to_int y)) (* (- 9) (str.to_int z)) (* 8 (str.to_int a)) (* (- 10) (str.to_int b))) 76))
(assert (< (+ (* (- 2) (str.to_int x)) (* 8 (str.to_int y)) (* (- 2) (str.to_int z)) (- (str.to_int a)) (* 4 (str.to_int b))) 16))
(assert (>= (+ (* 3 (str.to_int x)) (* 7 (str.to_int y)) (* (- 6) (str.to_int z)) (- (str.to_int a)) (* 9 (str.to_int b))) 76))
(assert (< (+ (* 4 (str.len x)) (* 5 (str.len y)) (* 7 (str.len z)) (str.len a) (* (- 5) (str.len b))) 59))

(check-sat)