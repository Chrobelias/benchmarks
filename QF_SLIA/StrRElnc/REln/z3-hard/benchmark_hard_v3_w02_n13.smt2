(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.+ (re.union (str.to_re "110") (re.union (str.to_re "671") (re.* (str.to_re "505")))))))
(assert (str.in_re z (re.+ (re.+ (re.++ (str.to_re "334") (str.to_re "7"))))))
(assert (str.in_re x (re.union (re.* (str.to_re "34")) (str.to_re "400"))))

(assert (= (+ (* 5 (str.len x)) (* 2 (str.len y)) (* 8 (str.to_int y)) (* (- 2) (str.to_int z))) 59))

(check-sat)