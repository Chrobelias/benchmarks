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

(assert (str.in_re x (re.* (str.to_re "692"))))
(assert (str.in_re y (re.+ (re.range "5" "8"))))
(assert (str.in_re z (re.+ (re.union (re.* (str.to_re "7")) (str.to_re "7")))))
(assert (str.in_re a (re.++ (str.to_re "2") (re.+ (re.++ (re.* (str.to_re "43")) (re.range "0" "4"))))))
(assert (str.in_re b (re.+ (re.++ (str.to_re "38") (str.to_re "285")))))

(assert (< (+ (* 4 (str.len x)) (* (- 8) (str.len z)) (* (- 10) (str.len a)) (* (- 7) (str.len b)) (* (- 5) (str.to_int y)) (* 7 (str.to_int z))) 41))
(assert (<= (+ (* 9 (str.len x)) (* 5 (str.len y)) (* 8 (str.len z)) (* (- 5) (str.len b))) 6))
(assert (> (+ (* 10 (str.len y)) (* (- 2) (str.len z)) (* 6 (str.len b)) (* (- 8) (str.to_int x))) 44))

(check-sat)