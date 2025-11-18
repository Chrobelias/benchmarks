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

(assert (str.in_re x (re.+ (str.to_re "696"))))
(assert (str.in_re y (re.+ (re.union (re.+ (str.to_re "52")) (str.to_re "391")))))
(assert (str.in_re z (re.* (re.++ (re.range "0" "5") (re.++ (str.to_re "43") (str.to_re "0"))))))
(assert (str.in_re a (re.+ (re.+ (re.* (re.* (str.to_re "21")))))))
(assert (str.in_re b (re.* (str.to_re "75"))))

(assert (= (+ (* (- 7) (str.to_int x)) (* 4 (str.to_int y)) (* (- 6) (str.to_int z)) (* 6 (str.to_int a)) (* (- 4) (str.to_int b))) 66))
(assert (< (+ (* (- 3) (str.len x)) (* (- 5) (str.len z)) (* 9 (str.len a)) (* (- 9) (str.len b))) 0))
(assert (= (+ (* (- 3) (str.len x)) (* (- 3) (str.to_int y)) (* 8 (str.to_int b))) 16))
(assert (<= (+ (* (- 2) (str.len y)) (* 4 (str.len z)) (* (- 10) (str.len a)) (* 5 (str.len b))) 96))
(assert (= (+ (* 3 (str.to_int x)) (* (- 6) (str.to_int y)) (* 5 (str.to_int z)) (- (str.to_int a)) (* 6 (str.to_int b))) 27))

(check-sat)