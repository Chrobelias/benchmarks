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

(assert (str.in_re x (re.* (str.to_re "922"))))
(assert (str.in_re y (re.union (re.range "6" "8") (re.* (str.to_re "10")))))
(assert (str.in_re z (re.++ (re.+ (str.to_re "1")) (str.to_re "337"))))
(assert (str.in_re a (re.union (str.to_re "4") (re.+ (str.to_re "428")))))
(assert (str.in_re b (re.union (re.union (str.to_re "957") (str.to_re "98")) (re.+ (str.to_re "41")))))

(assert (< (+ (* (- 7) (str.len x)) (* 8 (str.len y)) (* 5 (str.len z)) (* 4 (str.len a)) (str.len b)) 98))
(assert (= (+ (* 3 (str.to_int x)) (- (str.to_int y)) (* 2 (str.to_int z)) (- (str.to_int a)) (* (- 10) (str.to_int b))) 52))
(assert (> (+ (* 9 (str.len x)) (* (- 7) (str.len z)) (* 6 (str.to_int x)) (* (- 2) (str.to_int y)) (* (- 7) (str.to_int z)) (* (- 7) (str.to_int b))) 75))
(assert (< (+ (* (- 4) (str.to_int x)) (* 9 (str.to_int y)) (* 6 (str.to_int z)) (str.to_int a) (* (- 3) (str.to_int b))) 54))
(assert (= (+ (* 4 (str.len z)) (* (- 8) (str.len a)) (* (- 5) (str.len b))) 96))

(check-sat)