(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (str.to_re "604") (re.++ (re.* (re.range "5" "7")) (str.to_re "713")))))
(assert (str.in_re y (re.+ (str.to_re "43"))))
(assert (str.in_re z (re.union (str.to_re "469") (re.union (re.* (str.to_re "51")) (str.to_re "15")))))
(assert (str.in_re a (re.++ (str.to_re "0") (re.union (str.to_re "401") (re.+ (str.to_re "21"))))))

(assert (<= (+ (* (- 4) (str.len x)) (* (- 9) (str.len y)) (* 4 (str.len z))) 49))
(assert (< (+ (* 8 (str.len x)) (* (- 4) (str.len y)) (* (- 2) (str.len z)) (* (- 4) (str.len a))) 26))
(assert (> (+ (* (- 2) (str.to_int x)) (* 8 (str.to_int y)) (* (- 8) (str.to_int z)) (* (- 8) (str.to_int a))) 99))
(assert (> (+ (* (- 5) (str.len x)) (* (- 5) (str.len y)) (* (- 2) (str.len z)) (* 2 (str.len a))) 7))

(check-sat)