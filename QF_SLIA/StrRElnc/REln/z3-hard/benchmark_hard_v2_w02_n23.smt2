(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.* (re.* (re.++ (str.to_re "57") (str.to_re "749"))))))
(assert (str.in_re x (re.union (re.++ (re.+ (re.+ (str.to_re "44"))) (str.to_re "21")) (re.range "1" "7"))))

(assert (= (+ (* 3 (str.len x)) (* 3 (str.len y)) (* 4 (str.to_int x)) (* (- 4) (str.to_int y))) 72))

(check-sat)