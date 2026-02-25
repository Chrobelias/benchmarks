(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re z (re.* (re.union (re.union (str.to_re "73") (str.to_re "4")) (str.to_re "7")))))
(assert (str.in_re y (re.* (re.union (str.to_re "486") (re.++ (re.+ (str.to_re "19")) (str.to_re "65"))))))
(assert (str.in_re x (re.+ (re.++ (re.range "2" "6") (re.++ (str.to_re "6") (re.+ (str.to_re "6")))))))

(assert (>= (+ (* (- 2) (str.len x)) (* (- 10) (str.to_int y))) 65))

(check-sat)