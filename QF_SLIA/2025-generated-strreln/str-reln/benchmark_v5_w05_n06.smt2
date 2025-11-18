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

(assert (str.in_re x (re.union (re.* (str.to_re "74")) (re.union (re.range "4" "6") (str.to_re "1")))))
(assert (str.in_re y (re.++ (str.to_re "51") (re.* (str.to_re "364")))))
(assert (str.in_re z (re.* (re.++ (str.to_re "0") (re.union (str.to_re "8") (str.to_re "175"))))))
(assert (str.in_re a (re.union (re.+ (re.range "7" "9")) (str.to_re "288"))))
(assert (str.in_re b (re.+ (re.range "2" "6"))))

(assert (< (+ (* (- 3) (str.to_int x)) (* (- 7) (str.to_int y)) (* 7 (str.to_int z)) (* 7 (str.to_int a)) (* (- 9) (str.to_int b))) 20))
(assert (>= (+ (* (- 9) (str.len z)) (* 9 (str.len a)) (* 9 (str.to_int y)) (* 5 (str.to_int z))) 72))
(assert (= (+ (* (- 10) (str.len x)) (* (- 5) (str.len a)) (* 3 (str.len b))) 74))
(assert (< (+ (* (- 6) (str.to_int x)) (* 6 (str.to_int y)) (- (str.to_int z)) (* 2 (str.to_int a)) (* (- 6) (str.to_int b))) 88))

(check-sat)