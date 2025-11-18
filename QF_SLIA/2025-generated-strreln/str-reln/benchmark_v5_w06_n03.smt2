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

(assert (str.in_re x (re.union (re.+ (str.to_re "24")) (str.to_re "2"))))
(assert (str.in_re y (re.+ (re.++ (re.union (re.* (str.to_re "7")) (str.to_re "0")) (str.to_re "26")))))
(assert (str.in_re z (re.union (re.* (re.union (re.* (str.to_re "252")) (str.to_re "92"))) (re.range "0" "8"))))
(assert (str.in_re a (re.+ (str.to_re "6"))))
(assert (str.in_re b (re.union (re.+ (str.to_re "79")) (re.+ (str.to_re "11")))))

(assert (= (+ (* (- 4) (str.to_int x)) (* 3 (str.to_int y)) (* 4 (str.to_int z)) (str.to_int a) (* (- 8) (str.to_int b))) 19))
(assert (>= (+ (* 4 (str.len x)) (* 3 (str.len a)) (* (- 10) (str.to_int a))) 25))
(assert (< (+ (* 9 (str.to_int x)) (* 2 (str.to_int y)) (* (- 6) (str.to_int z)) (* 9 (str.to_int a)) (* (- 6) (str.to_int b))) 87))
(assert (> (+ (* (- 5) (str.len x)) (* 10 (str.len y)) (* (- 10) (str.len z)) (* 9 (str.len a)) (* 5 (str.len b))) 25))
(assert (> (+ (str.to_int x) (* (- 3) (str.to_int y)) (* 7 (str.to_int z)) (* 6 (str.to_int a)) (* (- 8) (str.to_int b))) 87))

(check-sat)