(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.union (re.* (re.range "4" "7")) (str.to_re "7"))))
(assert (str.in_re x (re.union (str.to_re "79") (re.+ (re.++ (re.range "5" "8") (str.to_re "44"))))))
(assert (str.in_re y (re.union (re.union (str.to_re "17") (re.+ (str.to_re "3"))) (re.* (str.to_re "63")))))

(assert (= (+ (* (- 2) (str.len x)) (* (- 10) (str.len y)) (* 4 (str.len z))) 76))
(assert (= (+ (* (- 6) (str.len z)) (* (- 5) (str.to_int x)) (* 5 (str.to_int y))) 29))

(check-sat)