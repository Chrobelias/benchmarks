(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.+ (re.union (str.to_re "5") (re.range "2" "5")))))
(assert (str.in_re x (re.* (re.union (re.* (str.to_re "9")) (str.to_re "39")))))
(assert (str.in_re z (re.+ (re.+ (str.to_re "459")))))
(assert (str.in_re a (re.union (re.++ (re.* (str.to_re "625")) (re.* (str.to_re "88"))) (str.to_re "132"))))

(assert (>= (+ (str.to_int x) (* 6 (str.to_int y)) (* (- 6) (str.to_int z)) (* 5 (str.to_int a))) 57))
(assert (<= (+ (* (- 7) (str.len x)) (* (- 3) (str.len y)) (* (- 3) (str.len z)) (* 5 (str.len a))) 1))

(check-sat)