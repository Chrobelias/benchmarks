(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re z (re.union (re.+ (re.range "5" "7")) (re.union (re.range "1" "3") (str.to_re "17")))))
(assert (str.in_re x (re.union (re.+ (str.to_re "245")) (re.union (re.* (str.to_re "45")) (str.to_re "188")))))
(assert (str.in_re y (re.* (re.+ (re.+ (re.+ (re.range "3" "7")))))))

(assert (>= (+ (* 5 (str.len x)) (* (- 8) (str.len y)) (str.len z)) 99))
(assert (>= (+ (* 6 (str.len x)) (* 4 (str.len y)) (* (- 2) (str.to_int x))) 25))

(check-sat)