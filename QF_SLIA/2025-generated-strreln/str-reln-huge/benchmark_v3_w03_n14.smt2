(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 10))

(assert (str.in_re x (re.++ (str.to_re "748") (re.* (re.* (str.to_re "267"))))))
(assert (str.in_re y (re.++ (str.to_re "84") (re.++ (re.+ (str.to_re "38")) (str.to_re "0")))))
(assert (str.in_re z (re.++ (re.union (re.* (str.to_re "99")) (str.to_re "720")) (str.to_re "5"))))

(assert (< (+ (str.len x) (str.len y) (* 6 (str.to_int z))) 38))
(assert (>= (+ (* (- 7) (str.len x)) (* 3 (str.len y)) (* 9 (str.len z))) 79))

(check-sat)