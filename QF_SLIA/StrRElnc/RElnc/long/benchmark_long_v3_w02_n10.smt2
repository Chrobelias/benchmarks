(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len y) 1000))

(assert (= x (str.++ y "45" z)))

(assert (str.in_re y (re.+ (re.union (str.to_re "17") (re.+ (str.to_re "8"))))))
(assert (str.in_re x (re.+ (re.+ (re.union (re.* (str.to_re "8")) (re.range "2" "7"))))))
(assert (str.in_re z (re.+ (re.++ (re.* (str.to_re "52")) (str.to_re "44")))))

(assert (>= (+ (* (- 3) (str.len x)) (* (- 6) (str.len y)) (* (- 10) (str.len z))) 64))
(assert (<= (+ (* (- 6) (str.to_int x)) (* (- 6) (str.to_int y)) (* (- 5) (str.to_int z))) 69))

(check-sat)