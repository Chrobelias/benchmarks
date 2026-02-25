(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= x (str.++ "47" y)))

(assert (str.in_re x (re.++ (re.* (re.* (str.to_re "471"))) (re.* (str.to_re "250")))))
(assert (str.in_re y (re.union (re.union (str.to_re "72") (re.* (re.range "0" "8"))) (re.range "3" "8"))))

(assert (>= (+ (* 2 (str.len y)) (* (- 3) (str.to_int x))) 64))

(check-sat)