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

(assert (str.in_re x (re.union (str.to_re "161") (re.* (re.++ (str.to_re "9") (re.range "0" "2"))))))
(assert (str.in_re y (re.+ (str.to_re "581"))))
(assert (str.in_re z (re.union (str.to_re "32") (re.+ (str.to_re "68")))))
(assert (str.in_re a (re.union (re.union (str.to_re "4") (re.+ (str.to_re "101"))) (re.* (str.to_re "9")))))
(assert (str.in_re b (re.union (re.+ (re.union (str.to_re "1") (re.* (str.to_re "235")))) (str.to_re "22"))))

(assert (> (+ (* (- 7) (str.len x)) (* 6 (str.len z)) (* (- 3) (str.len a)) (* 4 (str.len b))) 22))
(assert (< (+ (* 5 (str.to_int y)) (* 7 (str.to_int z)) (* 2 (str.to_int a)) (* (- 7) (str.to_int b))) 18))
(assert (= (+ (* (- 9) (str.to_int x)) (* (- 2) (str.to_int y)) (* 3 (str.to_int z)) (* 9 (str.to_int a)) (- (str.to_int b))) 94))
(assert (< (+ (* 6 (str.to_int x)) (* (- 4) (str.to_int y)) (* 10 (str.to_int z)) (str.to_int a) (* (- 7) (str.to_int b))) 88))
(assert (= (+ (* (- 9) (str.to_int x)) (* 9 (str.to_int y)) (* (- 8) (str.to_int z)) (* 4 (str.to_int b))) 57))
(assert (> (+ (- (str.to_int x)) (* (- 7) (str.to_int z)) (str.to_int a) (* 7 (str.to_int b))) 4))

(check-sat)