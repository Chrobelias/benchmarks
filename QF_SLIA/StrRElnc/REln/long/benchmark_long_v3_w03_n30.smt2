(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))

(assert (str.in_re z (re.+ (re.+ (re.+ (re.range "5" "9"))))))
(assert (str.in_re y (re.* (re.union (str.to_re "13") (re.++ (str.to_re "19") (str.to_re "935"))))))
(assert (str.in_re x (re.++ (re.++ (str.to_re "660") (re.+ (str.to_re "6"))) (str.to_re "84"))))

(assert (> (+ (* 7 (str.len y)) (* 7 (str.len z)) (* 8 (str.to_int y))) 60))
(assert (>= (+ (* (- 3) (str.len x)) (* 5 (str.len y)) (* (- 10) (str.len z))) 28))

(check-sat)