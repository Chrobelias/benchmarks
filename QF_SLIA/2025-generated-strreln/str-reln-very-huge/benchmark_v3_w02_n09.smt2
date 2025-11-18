(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 100))

(assert (str.in_re x (re.+ (re.++ (re.union (str.to_re "555") (str.to_re "552")) (str.to_re "137")))))
(assert (str.in_re y (re.++ (re.* (str.to_re "543")) (re.++ (str.to_re "55") (re.* (str.to_re "395"))))))
(assert (str.in_re z (re.* (re.union (str.to_re "84") (re.union (str.to_re "980") (str.to_re "6"))))))

(assert (= (+ (str.to_int x) (* (- 2) (str.to_int y)) (* (- 10) (str.to_int z))) 72))
(assert (<= (+ (* (- 3) (str.len x)) (* (- 3) (str.len y)) (* 3 (str.len z))) 97))

(check-sat)