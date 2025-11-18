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

(assert (str.in_re x (re.* (re.++ (str.to_re "332") (re.union (str.to_re "87") (re.range "4" "6"))))))
(assert (str.in_re y (re.++ (re.++ (re.+ (str.to_re "826")) (re.+ (str.to_re "2"))) (str.to_re "12"))))
(assert (str.in_re z (re.union (str.to_re "85") (re.* (str.to_re "15")))))
(assert (str.in_re a (re.union (re.union (str.to_re "54") (re.union (re.* (str.to_re "849")) (re.range "6" "9"))) (re.range "0" "6"))))
(assert (str.in_re b (re.++ (re.+ (str.to_re "67")) (re.++ (re.range "3" "8") (str.to_re "48")))))

(assert (= (+ (* (- 8) (str.to_int x)) (* 9 (str.to_int z)) (* 3 (str.to_int a)) (- (str.to_int b))) 77))
(assert (>= (+ (* 5 (str.len x)) (* (- 8) (str.len y)) (* (- 4) (str.len a)) (* 8 (str.len b))) 68))
(assert (> (+ (* (- 7) (str.to_int x)) (* (- 5) (str.to_int y)) (* 4 (str.to_int z)) (* (- 4) (str.to_int a)) (* 4 (str.to_int b))) 52))

(check-sat)